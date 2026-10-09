;joenote - add secret cave for mist_stone with associated warps
DiglettsCaveScript:
	jp EnableAutoTextBoxDrawing

DiglettsCaveTextPointers:
;	db "@"
	dw Mist_Stone_Text
	dw BoulderText
	
Mist_Stone_Text:
	TX_ASM
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a

	ld hl, _TXTBookDesc
	call PrintText
	call .choice
	jr nz, .end
	
	ld hl, _TXTBookP1
	call PrintText
	call .choice
	jr nz, .end
	
	ld hl, _TXTBookP2
	call PrintText
	call .choice
	jr nz, .end

	ld hl, _TXTBookP3
	call PrintText
	call .choice
	jr nz, .end

	ld hl, _TXTBookP4
	call PrintText
	call .choice
	jr nz, .end
	
	ld hl, _TXTBookP5
	call PrintText

	CheckEvent EVENT_GOT_SACHA_STONE
	jr nz, .end

	lb bc, MOON_STONE, 1
	call GiveItem
	ld hl, _TXTBag
	jr nc, .next	;jump if not enough room in bag

	SetEvent EVENT_GOT_SACHA_STONE
	ld hl, _TXTSacha_Stone
	call PrintText
	ld a, SFX_GET_ITEM_1
	call PlaySound 
	call WaitForSoundToFinish
	jr .end

.next
	call PrintText
.end
	xor a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld [hJoyHeld], a
	jp TextScriptEnd
.choice
	call YesNoChoice ; yes/no menu
	ld a, [wCurrentMenuItem]
	and a
	ret
	
_TXTBookDesc:
	text "This journal is"
	line "badly rotted from"
	cont "the heavy mist"
	cont "within this cave."

	para "A few parts are"
	line "still legible."
	cont "Try reading it?"
	done
	db "@"

_TXTBookP1:
	text "This is my Secret"
	line "Room. It was dug-"
	cont "out by a group of"
	cont "wild Diglett."

	para "Read some more?"
	done
	db "@"

_TXTBookP2:
	text "I heard Bill has"
	line "a Secret Garden"
	cont "behind his house."
	
	para "But he'll neither"
	line "confirm nor deny"
	cont "it to anyone."
	
	para "Maybe if I show"
	line "him a new species"
	cont "of #mon..."
	
	para "Keep reading?"
	done
	db "@"

_TXTBookP3:
	text "I heard there's"
	line "a strange truck"
	cont "down by the docks"
	cont "of Vermilion."
	
	para "If only I could"
	line "lay my hands on"
	cont "a ticket to"
	cont "check it out..."
	
	para "Keep reading?"
	done
	db "@"
	
_TXTBookP4:
	text "It's said that a"
	line "Mist Stone can"
	cont "unlock the hidden"
	cont "potential within"
	cont "a #mon."
	
	para "Where to find it?"
	line "Perhaps here, in"
	cont "this very room."
	
	para "The misty air of"
	line "this cave might"
	cont "provide the right"
	cont "conditions."
	
	para "There's a scrib-"
	line "bled note,"
	cont "read it?"
	done
	db "@"

_TXTBookP5:
	text "I found the Stone!"
	line "Thanks for the"
	cont "info!"

	para "PS: I left a"
	line "little gift as"
	cont "a thank-you."
	cont "Ash."
	prompt
	db "@"

_TXTSacha_Stone:
	text "You received the"
	line "Mist Stone!@@"
	db "@"

_TXTBag:
	text "Your bag is full."
	done
	db "@"
