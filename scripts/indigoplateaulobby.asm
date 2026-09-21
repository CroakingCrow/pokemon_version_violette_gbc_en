IndigoPlateauLobbyScript:
	call Serial_TryEstablishingExternallyClockedConnection
	call EnableAutoTextBoxDrawing
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_2, [hl]
	res BIT_CUR_MAP_LOADED_2, [hl]
	ret z
	ld hl, wBeatLorelei
	bit 1, [hl]
	res 1, [hl]
	ret z
	; Elite 4 events
	ResetEventRange ELITE4_EVENTS_START, EVENT_LANCES_ROOM_LOCK_DOOR
	ret

IndigoPlateauLobbyTextPointers:
	dw IndigoHealNurseText
	dw IndigoPlateauLobbyText2
	dw IndigoPlateauLobbyText3
	dw IndigoCashierText
	dw IndigoTradeNurseText
	dw IndigoChanseyText

IndigoHealNurseText:
	TX_POKECENTER_NURSE

IndigoPlateauLobbyText2:
	TX_ASM
	CheckEvent EVENT_ELITE_4_BEATEN ;joenote - add text for after beating the elite 4
	ld hl, IndigoPlateauLobbyText2_normal
	jr z, .print
	ld hl, IndigoPlateauLobbyText2_ALT
.print	
	call PrintText
	jp TextScriptEnd
	
IndigoPlateauLobbyText2_normal:
	TX_FAR _IndigoPlateauLobbyText2
	db "@"

IndigoPlateauLobbyText3:
	TX_FAR _IndigoPlateauLobbyText3
	db "@"

IndigoTradeNurseText:
	TX_CABLE_CLUB_RECEPTIONIST

IndigoPlateauLobbyText2_ALT:
	text "Yo! Once and"
	line "future champ!"

	para "At #mon League,"
	line "you have to face"
	cont "the Elite Four in"
	cont "succession."

	para "If you lose, you"
	line "have to start all"
	cont "over again! You"
	cont "know the drill by"
	cont "now! Go for it!"
	done
	db "@"

IndigoChanseyText:
	TX_FAR _ChanseyText
	TX_ASM
	ld a, CHANSEY
	call DisplayPokedex
	jp TextScriptEnd
