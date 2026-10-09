CeladonCityScript:
	call EnableAutoTextBoxDrawing
	ResetEvents EVENT_1B8, EVENT_1BF
	ResetEvent EVENT_67F
	ld a, 0
	ld [wCeladonGameCornerCurScript], a	;something is writing $18 to the game corner script number and I don't know what
	ld [wRocketHideout3CurScript], a	;something is writing $06 to this and I don't know what
	ret

CeladonCityTextPointers:
	dw CeladonCityText1
	dw CeladonCityText2
	dw CeladonCityText3
	dw CeladonCityText4
	dw CeladonCityText5
	dw CeladonCityText6
	dw CeladonCityText7
	dw CeladonCityText8
	dw CeladonCityText9
	dw CeladonCityText_Merchant
	dw CeladonCityText_RhyhornMerchant
	dw CeladonCityText10
	dw CeladonCityText11
	dw PokeCenterSignText
	dw CeladonCityText13
	dw CeladonCityText14
	dw CeladonCityText15
	dw CeladonCityText16
	dw CeladonCityText17
	dw CeladonCityText18
	dw CeladonCityText_School
	dw CeladonCityText_CasinoPrizes
	dw CeladonCityText_Dinner
	dw CeladonCityText_Hotel

CeladonCityText1:
	TX_FAR _CeladonCityText1
	db "@"

CeladonCityText2:
	TX_FAR _CeladonCityText2
	db "@"

CeladonCityText3:
	TX_FAR _CeladonCityText3
	db "@"

CeladonCityText4:
	TX_FAR _CeladonCityText4
	db "@"

CeladonCityText5:
	TX_ASM
	CheckEvent EVENT_GOT_TM37
	jr nz, .asm_7053f
	ld hl, TM37PreText
	call PrintText
	lb bc, TM37_SLUDGE_BOMB, 1
	call GiveItem
	jr c, .Success
	ld hl, TM37NoRoomText
	call PrintText
	jr .Done
.Success
	ld hl, ReceivedTM37Text
	call PrintText
	SetEvent EVENT_GOT_TM37
	jr .Done
.asm_7053f
	ld hl, TM37ExplanationText
	call PrintText
.Done
	jp TextScriptEnd

TM37PreText:
	TX_FAR _TM37PreText
	db "@"

ReceivedTM37Text:
	TX_FAR _ReceivedTM37Text
	TX_SFX_ITEM_1
	db "@"

TM37ExplanationText:
	TX_FAR _TM37ExplanationText
	db "@"

TM37NoRoomText:
	TX_FAR _TM37NoRoomText
	db "@"

CeladonCityText6:
	TX_FAR _CeladonCityText6
	db "@"

CeladonCityText7:
	TX_FAR _CeladonCityText7
	TX_ASM
	ld a, POLIWRATH
	call DisplayPokedex
	jp TextScriptEnd

	
CeladonCityText8:
	TX_ASM
	CheckEvent EVENT_ELITE_4_BEATEN
	ld hl, CeladonCityText8_alternate
	jr nz, .next	
	ld hl, CeladonCityText8_continue
.next
	call PrintText
	jp TextScriptEnd
CeladonCityText8_continue:
	TX_FAR _CeladonCityText8
	db "@"
CeladonCityText8_alternate:
	text "What do you want?"
	line "You're a cop?"

	para "Yeah it's me who"
	line "supply the Dept."
	cont "Store with rare"
	cont "items, they don't"
	cont "ask where it"
	cont "comes from, hehe."
	
	para "Who needs Team"
	line "Rocket for money?"
	done
	db "@"

CeladonCityText9:	;joenote - make this rocket grunt sell coins in the post-game
	TX_ASM
	CheckEvent EVENT_ELITE_4_BEATEN
	jp nz, BuyCoinsFromRocket	
	ld hl, CeladonCityText9_continue
	call PrintText
	jp TextScriptEnd
CeladonCityText9_continue:
	TX_FAR _CeladonCityText9
	db "@"

CeladonCityText_Merchant:
	TX_FAR _CeladonCityText_Merchant
	db "@"

CeladonCityText10:
	TX_FAR _CeladonCityText10
	db "@"

CeladonCityText11:
	TX_FAR _CeladonCityText11
	db "@"

CeladonCityText13:
	TX_FAR _CeladonCityText13
	db "@"

CeladonCityText14:
	TX_FAR _CeladonCityText14
	db "@"

CeladonCityText15:
	TX_FAR _CeladonCityText15
	db "@"

CeladonCityText16:
	TX_FAR _CeladonCityText16
	db "@"

CeladonCityText17:
	TX_FAR _CeladonCityText17
	db "@"

CeladonCityText18:
	TX_FAR _CeladonCityText18
	db "@"

CeladonCityText_School:
	TX_FAR _CeladonCityText_School
	db "@"

CeladonCityText_RhyhornMerchant:
	TX_FAR _CeladonCityText_RhyhornMerchant
	TX_ASM
	ld a, RHYHORN
	call DisplayPokedex
	jp TextScriptEnd
	
BuyCoinsFromRocket:
	callba CeladonGameCornerScript_48f1e
	ld hl, _TXTSolicitCoins
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .refuse
	ld b, COIN_CASE
	call IsItemInBag
	jr z, .no_case
	callba Has9990Coins
	jr nc, .tooManyCoins
	xor a
	ld [hMoney], a
	ld [hMoney + 2], a
	ld a, $10
	ld [hMoney + 1], a
	call HasEnoughMoney
	jr nc, .havemoney
	ld hl, _NotEnoughMoney
	jr .end
.havemoney
	xor a
	ld [hMoney + 2], a
	ld a, $50
	ld [hMoney + 1], a
	ld a, $01
	ld [hMoney], a
	ld hl, hMoney + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	xor a
	ld [hUnusedCoinsByte], a
	ld [hCoins + 1], a
	ld a, $10
	ld [hCoins], a
	ld de, wPlayerCoins + 1
	ld hl, hCoins + 1
	ld c, $2
	predef AddBCDPredef
	callba CeladonGameCornerScript_48f1e
	ld a, SFX_PURCHASE
	call PlaySoundWaitForCurrent
	call WaitForSoundToFinish
	ld hl, _TXTBoughtCoins
	jr .end
.refuse
	ld hl, _TXTRefuseCoins
	jr .end
.tooManyCoins
	ld hl, _TXTCoinCaseFull
	jr .end
.no_case
	ld hl, _TXTNeedCoinCase
.end
	call PrintText
	jp TextScriptEnd

_TXTSolicitCoins:
	text "Pssst! Hey kid."
	line "Wanna buy some"
	cont "Coins? 1000 for"
	cont "only ¥15000."
	done
	db "@"
_TXTRefuseCoins:
	text "Then make like a"
	line "Bellsprout and"
	cont "leave!"
	
	para "It's hard enough"
	line "making money now"
	cont "that Team Rocket"
	cont "is gone."
	done
	db "@"
_TXTNeedCoinCase:
	text "Then bring your"
	line "Coin Case, dork."
	done
	db "@"
_TXTCoinCaseFull:
	text "Looks like you"
	line "don't need any."
	done
	db "@"
_NotEnoughMoney:	
	text "Come back with"
	line "the cash or don't"
	cont "waste my time!"
	done
	db "@"
_TXTBoughtCoins:
	text "Thanks. Don't ask"
	line "where I got 'em."
	done
	db "@"

CeladonCityText_CasinoPrizes:
	TX_FAR _CeladonCityText_CasinoPrizes
	db "@"

CeladonCityText_Dinner:
	TX_FAR _CeladonCityText_Dinner
	db "@"

CeladonCityText_Hotel:
	TX_FAR _CeladonCityText_Hotel
	db "@"
