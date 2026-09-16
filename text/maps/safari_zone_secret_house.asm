_SecretHouseText_Greeting::
	text "Ah! Finally!"

	para "You're the first"
	line "person to reach"
	cont "the Secret House!"

	para "I was getting"
	line "worried that no"
	cont "one would win our"
	cont "campaign prize."

	para "Congratulations!"
	line "You have won!"

;joenote - add hotkey info
	para "Press Select when"
	line "you are facing a"
	cont "shore to use it."	
	prompt

_SecretHouseText_PostLeagueGreeting::
	text "Oh! You came"
	line "back?"

	para "Thank you for"
	line "visiting me!"

	para "As a gift, I'll"
	line "tell you a little"
	cont "secret."

	para "This place used"
	line "to be a hidden"
	cont "laboratory!"
	done

_SecretHouseText_ReceivedHM03::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_SecretHouseText_HM03Explanation::
	text "HM03 is Surf!"

	para "#mon will be"
	line "able to ferry you"
	cont "across water!"

	para "And, this HM isn't"
	line "disposable! You"
	cont "can use it over"
	cont "and over!"

	para "You're super lucky"
	line "for winning this"
	cont "fabulous prize!"
	done

_SecretHouseText_HM03NoRoom::
	text "You don't have"
	line "room for this"
	cont "fabulous prize!"
	done

;;;;;;;;;;;;;;;;;;;;;;joenote - adding text for Chief battle
_SecretHouseText_ChiefChallenge::
	text "You want to"
	line "challenge me to a"
	cont "#mon battle?"
	done

_SecretHouseText_ChiefPreBattle::
	text "Oh my! Who told"
	line "you that I train"
	cont "#mon?"
	
	para "It's true. I'm a"
	line "big Safari Zone"
	cont "addict."
	
	para "Been so since I"
	line "was around your"
	cont "age, actually."
	
	para "Though, now I'm"
	line "mostly busy with"
	cont "the company."
	
	para "Doesn't mean I"
	line "don't find time"
	cont "for some fun!"
	done

_SecretHouseText_ChiefPostBattle::
	text "Ah!"
	line "Good times!"
	
	para "Nothing like a"
	line "#mon battle"
	cont "to unwind, eh?"
	
	para "During my Safaris"
	line "I met another"
	cont "champ in the"
	cont "making who's"
	cont "working in"
	cont "Fuchsia."
	
	para "She might want"
	line "to have a battle"
	cont "with you."
	prompt

_SecretHouseText_ChiefBye::
	text "Have a good one!"
	done
