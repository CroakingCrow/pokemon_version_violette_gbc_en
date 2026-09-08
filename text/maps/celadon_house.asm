_CeladonHouseText1::
	text "Hehehe!"
	line "Triple 7!!!"
	cont "Big cash for me!"
	done

_CeladonHouseText2::
	text "CHIEF!"

	para "We just shipped"
	line "2000 #mon as"
	cont "slot prizes!"
	done

_CeladonHouseText3::
	text "Don't touch the"
	line "poster at the"
	cont "Game Corner!"

	para "There's no secret"
	line "switch behind it!"
	done

_CeladonHouseTextChiefIntro::	;joenote - adding text for selling pokemon
	text "Hehehe! The slots"
	line "just reel in the"
	cont "dough, big time!"
	
	para "But I'll run out"
	line "of prize #mon"
	cont "without the Boss."
	
	para "Hey kid!"
	line "Nice @"
	TX_RAM wcd6d
	db $0
	cont "ya got there."

	para "I'll give you"
	line "¥@"
	TX_BCD hItemPrice, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "!"
	done
	
_CeladonHouseTextChiefDone::
	text "Later kid."
	done
