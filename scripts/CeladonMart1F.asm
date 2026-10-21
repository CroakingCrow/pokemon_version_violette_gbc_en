CeladonMart1Script:
	jp EnableAutoTextBoxDrawing

CeladonMart1TextPointers:
	dw CeladonMart1Text1
	dw CeladonMart1Text2
	dw CeladonMart1Text3
	dw CeladonMart1Text_Phone

CeladonMart1Text1:
	TX_FAR _CeladonMart1Text1
	db "@"

CeladonMart1Text2:
	TX_FAR _CeladonMart1Text2
	db "@"

CeladonMart1Text3:
	TX_FAR _CeladonMart1Text3
	db "@"

CeladonMart1Text_Phone:
	TX_ASM
	ld hl, .askCall
	call PrintText

	; ask for call
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .answerNo
	; else

	call StopAllMusic

	ld hl, .startCall
	call PrintText

	call DialPhone

	ld a, SFX_SNARE_3
	call PlaySoundWaitForCurrent
	ld c, 5
	call DelayFrames
	call StopAllMusic
	ld a, SFX_SNARE_8
	call PlaySound

	ld c, BANK(Music_PalletTown)
	ld a, MUSIC_PALLET_TOWN
	call PlayMusic

	ld hl, .momCall
	call PrintText

	ld a, SFX_SNARE_3
	call PlaySoundWaitForCurrent
	ld c, 5
	call DelayFrames
	call StopAllMusic
	ld a, SFX_SNARE_8
	call PlaySound
	ld hl, .stopCall
	call PrintText
	call PlayDefaultMusic
	
	jp TextScriptEnd

.answerNo
	ld hl, .quitCall
	call PrintText
	jp TextScriptEnd

.quitCall
	text "Put down the"
	line "receiver."
	done
	db "@"

.askCall
	text "Call Mom?"
	done
	db "@"

.startCall
	text "Dialing"
	line "the number..."
	done
	db "@"

.momCall
	text "Hello?"
	line "Oh I'm so happy"
	cont "that you thought"
	cont "of calling me!"

	para "They talked about"
	line "you and <RIVAL>"
	cont "on TV!"
	cont "I'm so proud of"
	cont "you <PLAYER>!"

	para "Oak is here too,"
	line "he says hi!"

	para "Remember to brush"
	line "your teeth and"
	cont "come back to see"
	cont "us whenever you"
	cont "can!"

	para "See you soon,"
	line "love you!"
	prompt
	db "@"

.stopCall
	text "Clack!"
	done
	db "@"

; Credit PureRGB
DialPhone:
	; dial
	ld b, 4
.loopdial
	ld a, SFX_SWITCH
	call PlaySound
	dec b
	jr z, .donedial
	ld c, 20
	call DelayFrames
	jr .loopdial
.donedial
	ld c, 50
	call DelayFrames

	; call outgoing sounds 
	call Random
	and %11 ; 0-3 rings
	ld b, a
	jr nz, .loop
	inc b ; if it's 0, increase it to 2
	inc b ; 50% of the time we'll get 2 rings
.loop
	push bc
	ld b, 60
.loop2
	push bc
	ld a, SFX_TURN_OFF_PC
	call PlaySound
	ld c, 2
	call DelayFrames
	pop bc
	dec b
	jr nz, .loop2
	pop bc
	dec b
	jr z, .doneOutgoing
	call StopAllMusic
	ld c, 120
	call DelayFrames
	jr .loop
.doneOutgoing
	; phone gets picked up
	call StopAllMusic
	ld c, 10
	call DelayFrames
	ld a, SFX_SNARE_1
	call PlaySound
	ld c, 5
	call DelayFrames
	call StopAllMusic
	ld a, SFX_TRIANGLE_1
	call PlaySound
	ld c, 10
	call DelayFrames
	ret
