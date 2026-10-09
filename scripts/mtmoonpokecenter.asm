MtMoonPokecenterScript:
	call .markAsVisited
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

.markAsVisited
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	ret z
	ld c, ROUTE_4_FLY
	ld b, FLAG_SET
	ld hl, wTownVisitedFlag   ; mark town as visited (for flying)
	predef_jump FlagActionPredef

MtMoonPokecenterTextPointers:
	dw MtMoonHealNurseText
	dw MtMoonPokecenterText2
	dw MtMoonPokecenterText3
	dw MagikarpSalesmanText
	dw MtMoonPokecenterText5
	dw MtMoonTradeNurseText
	dw MtMoonChanseyText

MtMoonHealNurseText:
	db $ff

MtMoonPokecenterText2:
	TX_FAR _MtMoonPokecenterText1
	db "@"

MtMoonPokecenterText3:
	TX_FAR _MtMoonPokecenterText3
	db "@"

MagikarpSalesmanText:
	TX_ASM
	CheckEvent EVENT_BOUGHT_MAGIKARP, 1
	jp c, .alreadyBoughtMagikarp
	ld hl, .Text1
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .choseNo
	ld [hMoney], a
	ld [hMoney + 2], a
	ld a, $5
	ld [hMoney + 1], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, .NoMoneyText
	jr .printText
.enoughMoney
	lb bc, MAGIKARP, 5
	call GivePokemon
	jr nc, .done
	xor a
	ld [wPriceTemp], a
	ld [wPriceTemp + 2], a
	ld a, $5
	ld [wPriceTemp + 1], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	SetEvent EVENT_BOUGHT_MAGIKARP
	jr .done
.choseNo
	ld hl, .RefuseText
	jr .printText
.alreadyBoughtMagikarp
	jp MagikarpSalesmanText_CheckEventMons	;joenote - turning this guy into an event move tutor
.backFromCheckEventMons
	ld hl, .Text2
.printText
	call PrintText
.done
	jp TextScriptEnd

.Text1
	TX_FAR _MagikarpSalesmanText1
	db "@"

.RefuseText
	TX_FAR _MagikarpSalesmanNoText
	db "@"

.NoMoneyText
	TX_FAR _MagikarpSalesmanNoMoneyText
	db "@"

.Text2
	TX_FAR _MagikarpSalesmanText2
	db "@"

MtMoonPokecenterText5:
	TX_FAR _MtMoonPokecenterText5
	db "@"

MtMoonTradeNurseText:
	db $f6

;joenote - turn this shady guy into a move tutor for japan-only event pokemon moves	

MagikarpSalesmanText_CheckEventMons:
	ld hl, wPartyMon1Species
	ld a, [hl]
	cp MAGIKARP
	jp z, MagikarpSalesmanText_DragonRageKarp

	cp RAPIDASH
	jp z, MagikarpSalesmanText_PayDayRapidashOrFearow
	cp FEAROW
	jp z, MagikarpSalesmanText_PayDayRapidashOrFearow

	cp PIKACHU
	jp z, MagikarpSalesmanText_FlyingPikachu
.done
	jp MagikarpSalesmanText.backFromCheckEventMons
	
MagikarpSalesmanText_DragonRageKarp:
	xor a
	ld [wWhichPokemon], a

	ld a, DRAGON_RAGE
	ld [wMoveNum], a
	ld [wPokedexNum],a
	call GetMoveName
	call CopyStringToCF4B ; copy name to wcf4b

	ld a, [wPokedexNum]
	push af
	ld a, [wPartyMon1Species]
	ld [wPokedexNum], a
	call GetMonName
	pop af
	ld [wPokedexNum], a
	
	callba CheckIfMoveIsKnown
	jp c, MagikarpSalesmanText.backFromCheckEventMons

	ld hl, .Text1
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, MagikarpSalesmanText.choseNo
	ld [hMoney], a
	ld [hMoney + 2], a
	ld a, $10
	ld [hMoney + 1], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, MagikarpSalesmanText.NoMoneyText
	jp MagikarpSalesmanText.printText
.enoughMoney
	ld hl, wStatusFlags7
	set 6, [hl]
	push hl		;make it so the move-forget list covers up sprites
	predef LearnMove
	pop hl
	res 6, [hl]
	ld a, b
	and a
	jp z, MagikarpSalesmanText.choseNo	
	xor a
	ld [wPriceTemp], a
	ld [wPriceTemp + 2], a
	ld a, $10
	ld [wPriceTemp + 1], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ld hl, MagikarpSalesmanText_Thanks
	jp MagikarpSalesmanText.printText
.Text1
	text "Man: Unhappy with"
	line "your Magikarp?"
	para "I'll teach it the"
	line "move Dragon Rage"
	cont "for a mere ¥1000!"
	cont "What do you say?"
	done
	db "@"	
	
MagikarpSalesmanText_PayDayRapidashOrFearow:
	xor a
	ld [wWhichPokemon], a

	ld a, PAY_DAY
	ld [wMoveNum], a
	ld [wPokedexNum],a
	call GetMoveName
	call CopyStringToCF4B ; copy name to wcf4b

	ld a, [wPokedexNum]
	push af
	ld a, [wPartyMon1Species]
	ld [wPokedexNum], a
	call GetMonName
	pop af
	ld [wPokedexNum], a
	
	callba CheckIfMoveIsKnown
	jp c, MagikarpSalesmanText.backFromCheckEventMons

	ld hl, .Text1
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, MagikarpSalesmanText.choseNo
	ld [hMoney], a
	ld [hMoney + 2], a
	ld a, $10
	ld [hMoney + 1], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, MagikarpSalesmanText.NoMoneyText
	jp MagikarpSalesmanText.printText
.enoughMoney
	ld hl, wStatusFlags7
	set 6, [hl]
	push hl		;make it so the move-forget list covers up sprites
	predef LearnMove
	pop hl
	res 6, [hl]
	ld a, b
	and a
	jp z, MagikarpSalesmanText.choseNo	
	xor a
	ld [wPriceTemp], a
	ld [wPriceTemp + 2], a
	ld a, $10
	ld [wPriceTemp + 1], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ld hl, MagikarpSalesmanText_Thanks
	jp MagikarpSalesmanText.printText
.Text1
	text "Man: Want to make"
	line "money with that"
	cont "@"
	TX_RAM wcd6d
	text "of yours?"
	para "I'll teach it the"
	line "move Pay Day for"
	cont "a paltry ¥1000!"
	cont "What do you say?"
	done
	db "@"

MagikarpSalesmanText_FlyingPikachu:
	CheckEvent EVENT_ELITE_4_BEATEN
	jp z, MagikarpSalesmanText.backFromCheckEventMons

	xor a
	ld [wWhichPokemon], a

	ld a, FLY
	ld [wMoveNum], a
	ld [wPokedexNum],a
	call GetMoveName
	call CopyStringToCF4B ; copy name to wcf4b

	ld a, [wPokedexNum]
	push af
	ld a, [wPartyMon1Species]
	ld [wPokedexNum], a
	call GetMonName
	pop af
	ld [wPokedexNum], a
	
	callba CheckIfMoveIsKnown
	jp c, MagikarpSalesmanText.backFromCheckEventMons

	ld hl, .Text1
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, MagikarpSalesmanText.choseNo
	ld [hMoney], a
	ld [hMoney + 2], a
	ld a, $90
	ld [hMoney + 1], a
	call HasEnoughMoney
	jr nc, .enoughMoney
	ld hl, MagikarpSalesmanText.NoMoneyText
	jp MagikarpSalesmanText.printText
.enoughMoney
	ld hl, wStatusFlags7
	set 6, [hl]
	push hl		;make it so the move-forget list covers up sprites
	predef LearnMove
	pop hl
	res 6, [hl]
	ld a, b
	and a
	ret z

	xor a
	ld [wPriceTemp], a
	ld [wPriceTemp + 2], a
	ld a, $90
	ld [wPriceTemp + 1], a
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ld hl, .Text2
	call PrintText
	ld a, SFX_GET_ITEM_1
	call PlaySoundWaitForCurrent
	call WaitForSoundToFinish
	ld hl, MagikarpSalesmanText_Thanks
	jp MagikarpSalesmanText.printText
.Text1
	text "Man: Ever seen a"
	line "flying Pikachu?"
	
	para "I'll teach yours"
	line "the move Fly for"
	cont "a measly ¥9000!"
	
	para "What do you say?"
	done
	db "@"

.Text2
	text "Man: Let's see..."
	line "I'll just go and"
	cont "tie some balloons"
	cont "like so. And..."
	cont "Done!"
	para "Your Pikachu has"
	line "learned Fly!"
	done
	db "@"

MagikarpSalesmanText_Thanks:
	text "Man: Thanks kid!"
	done
	db "@"

MtMoonChanseyText:
	TX_FAR _ChanseyText
	TX_ASM
	ld a, CHANSEY
	call DisplayPokedex
	jp TextScriptEnd
