Route19BeachHouseScript:
	jp EnableAutoTextBoxDrawing


Route19BeachHouseTextPointers:
	dw Route19BeachHouseText_Fisher
	dw Route19BeachHouseText_Pikachu
	dw Route19BeachHouseText_Poster1
	dw Route19BeachHouseText_Poster2
	dw Route19BeachHouseText_Printer

Route19BeachHouseText_Fisher:
	TX_ASM
	; the minigame requires a Surfboard in the active bag
	ld hl, wBagItems
.itemLoop
	ld a, [hli]
	cp $ff
	jr z, .noSurfboard
	cp SURFBOARD
	jr z, .gotSurfBoard
	inc hl
	jr .itemLoop
.noSurfboard
	ld hl, Route19BeachHouseText_FisherGreeting
	jr .displayText

.gotSurfBoard
	ld hl, .madeHighScore

	; the move tutor requires a Pikachu's Beach high score of 3000+
	; (2-byte packed BCD: +1 holds the thousands/hundreds byte,
	; so that byte being >= $30 means a score of at least 3000)
	ld a, [wSurfingMinigameHiScore + 1]
	cp $30
	jr c, .scoreTooLow

	ld a, [wPartyMon1Species]
	cp PIKACHU
	jp z, PikachuTutor
	cp RAICHU
	jp z, PikachuTutor
	cp GOROCHU
	jp z, PikachuTutor
	; fallthrough
.displayText
	call PrintText
	jp TextScriptEnd

.scoreTooLow
	ld hl, .scoreTooLowText
	jr .displayText

.scoreTooLowText
	text "Yo how ya doin'?"
	line "Crazy!!! You're"
	cont "a Surfer too!"

	para "Reach a score of"
	line "3000 and I'll"
	cont "teach the Way of"
	cont "the Surf to your"
	cont "Pikachu, man!"
	done
	db "@"

.madeHighScore
	text "Yo how ya doin'?"
	line "No way!!! You're"
	cont "shredding!"

	para "You're one of us"
	line "now, dude!"

	para "Bring me your"
	line "Pikachu or your"
	cont "Raichu and Dave"
	cont "will show it the"
	cont "way of the Surf!"
	done
	db "@"

PikachuTutor:
	xor a
	ld [wWhichPokemon], a

	ld hl, .textStart
	call PrintText

	ld a, SURF
	call .learnmove
	ret

.textStart
	text "Okay man!"
	line "Get on the surf-"
	cont "board, we'll"
	cont "teach you how"
	cont "to do backflips!"
	prompt
	db "@"

.learnmove
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
	jr c, .moveKnown

	ld hl, wStatusFlags7
	set 6, [hl]
	push hl		;make it so the move-forget list covers up sprites
	predef LearnMove
	pop hl
	res 6, [hl]
	ld a, b
	and a
	ret z
.finish
	ret
.moveKnown
	jp TextScriptEnd

Route19BeachHouseText_FisherGreeting:
	TX_FAR _Route19BeachHouseText_FisherGreeting
	db "@"

Route19BeachHouseText_Pikachu:
	TX_ASM
	ld hl, .wantToSurfText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr z, .startMinigame

	ld hl, .noSurfText
	call PrintText
	jp TextScriptEnd

.startMinigame
	; the minigame requires a Surfboard in the active bag
	ld hl, wBagItems
.itemLoop
	ld a, [hli]
	cp $ff
	jr z, .noSurfboard
	cp SURFBOARD
	jr z, .hasSurfboard
	inc hl
	jr .itemLoop
.noSurfboard
	ld hl, .noSurfboardText
	call PrintText
	jp TextScriptEnd
.hasSurfboard
	ld a, 1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	callba PikachusBeach
	; the minigame reload path restores the map, but not the dialogue window
	callba DisplayTextIDInit
	xor a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jp TextScriptEnd

.wantToSurfText
	text "Dave: Pika pi?"
	prompt
	db "@"
.yesSurfText
	text "Dave: Pikaaan!"
	prompt
	db "@"
.noSurfText
	text "Dave: PIKA CHU."
	done
	db "@"
.noSurfboardText
	text "Dave: PIKA CHU."
	line "Its finger points"
	cont "to the Surfboards"
	done
	db "@"

Route19BeachHouseText_Poster1:
	TX_FAR _Route19BeachHouseText_Poster1
	db "@"

Route19BeachHouseText_Poster2:
	TX_FAR _Route19BeachHouseText_Poster2
	db "@"

Route19BeachHouseText_Printer:
	TX_ASM
	ld hl, .wantToPrintText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr z, .printScore

	xor a
	ld [wUpdateSpritesEnabled], a
	callba DisplaySurfingMinigameHighScoreScreen
	ld a, $1
	ld [wUpdateSpritesEnabled], a
	ld a, 1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jp TextScriptEnd

.printScore
	; TODO Print

	xor a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jp TextScriptEnd

.wantToPrintText
	text "Print score?"
	prompt
	db "@"
