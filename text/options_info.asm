
_DisplayTextSpeedInfoText::
	text "Controls the"
 	line "display speed"
	cont "of the text box"
	cont "3 being the"
	cont "fastest."
 	prompt
	
_DisplayBattleAnimationInfoText::
	text "Display battle"
	line "animations?"
 	prompt

_DisplayBattleStyleInfoText::
	text "Shift: asks to"
 	line "recall #mon when-"
	cont "ever the opponent"
	cont "sends out their"
	cont "next #mon"
	cont "Makes the game"
	cont "easier."

	para "Set: you are"
	line "under the same"
	cont "rules as your"
	cont "opponent."
 	prompt

_DisplayAudioInfoText::
	text "Controls the audio"
 	line "output of the game"

	para "Note that"
	line "Stereo may"
	cont "sound weird."
 	prompt

_DisplayFPSInfoText::
	text "Lets you switch"
 	line "between 30 or 60"
	cont "FPS."
 	prompt

_DisplayInstantTextText::
	text "Displays text box"
 	line "instantly."

	para "May skip some"
	cont "sound effects."
 	prompt
	
_DisplayGammaInfoText::
	text "Tone down colors"
 	line "to fix incorrect"
	cont "display on some"
	cont "emulator like mGBA"

	para "Only applies"
	line "in game,"
	cont "the game intro is"
	cont "not affected."
 	prompt
	
_DisplayEnhancedGBCInfoText::
	text "Activate the full"
 	line "GBC palette."

	para "When disabled,"
	line "the colors will"
	cont "follow the"
	cont "limitations of the"
	cont "original game."
 	prompt
	
_DisplayLevelCapInfoText::
	text "Activate level cap"
 	line "depending on the"
	cont "number of Badge"

	para "Disabling this"
	line "setting makes the"
	cont "game easier."
 	prompt
	
_DisplayHardModeInfoText::
	text "Adds more rules"
 	line "for difficulty"

	para "-Trainers are"
	line "stronger,"
	cont "especially after"
	cont "the League"

	para "-Trainers have"
	line " Higher IVs"
    
	para "-Trainers have"
	line "maximized EVs"

	para "-Badge boosts are"
	line "disabled against"
	cont "trainers"

	para "-AI is slighly"
	line "smarter"

	para "-Revives cannot be"
	line "used in Battle"

	para "-X Items are 2x"
	line "more effective"

	para "-Set mode is forced"
 	prompt
	
_DisplayNuzlockeInfoText::
	text "Nuzlocke Challenge:"
 	line "a set of rules for"
	cont "an even higher"
    cont "difficulty:"

    para "-A fainted #mon is"
    line "dead (Frozen, 1hp"
    cont "permanently)"

    para "-Only the first"
    line "wild #mon"
    cont "encountered in"
    cont "each area can be"
	cont "caught"
    cont "(<PK> will be"
    cont "displayed)"

    para "-Starts from"
    line "the moment you get"
    cont "#balls"

    para "-Nicknames are"
	line "mandatory for"
	cont "all #mon"
 	prompt
	
_DisplayRandomTrainersInfoText::
	text "Ordinary trainers"
 	line "are randomized"
	cont "but keeping the"
    cont "same level of"
	cont "rarity."
 	prompt
	
_DisplayRandomWildInfoText::
	text "Wild, non-static,"
 	line "encounters are"
    cont "randomized."
	
    para "-Fair: keeps"
    line "the same level"
    cont "of rarity"

    para "-Chaos: completly"
    line "random"
    cont "(very unbalanced)"
 	prompt
	