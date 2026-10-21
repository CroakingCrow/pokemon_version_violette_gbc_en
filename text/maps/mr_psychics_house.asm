_TM46PreReceiveText::
	text "...Wait! Don't"
	line "say a word!"

	para "You wanted this!"
	prompt

_ReceivedTM46Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_TM46ExplanationText::
	text "CT46 is" 
	line "Dark Pulse!"

	para "It can make"
	line "the target"
	cont "flinch!"
	done

_TM46NoRoomText::
	text "Where do you plan"
	line "to put this?"
	done
