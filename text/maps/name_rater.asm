_NameRaterText_Hello::
	text "Hello, hello!"
	line "I am the official"
	cont "Name Rater!"

	para "Want me to rate"
	line "the nicknames of"
	cont "your #mon?"
	done


_NameRaterText_RenameWho::
	text "Which #mon"
	line "should I look at?"
	prompt

_NameRaterText_NameRate::
	text_ram wcd6d
	text ", is it?"
	line "That is a decent"
	cont "nickname!"

	para "But, would you"
	line "like me to give"
	cont "it a nicer name?"

	para "How about it?"
	done

_NameRaterText_AskRename::
	text "Fine! What should"
	line "we name it?"
	prompt

_NameRaterText_Renamed::
	text "OK! This #mon"
	line "has been renamed"
	cont "@"
	text_ram wBuffer
	text "!"

	para "That's a better"
	line "name than before!"
	done

_NameRaterText_ComeBackLater::
	text "Fine! Come any"
	line "time you like!"
	done


_NameRaterText_Trade::
	text_ram wcd6d
	text ", is it?"
	line "That is a truly"
	cont "impeccable name!"

	para "Take good care of"
	line "@"
	text_ram wcd6d
	text "!"
	done
