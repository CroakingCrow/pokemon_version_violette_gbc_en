INCLUDE "charmap.asm"
INCLUDE "constants/text_constants.asm"
TEXT_1  EQU $20
TEXT_2  EQU TEXT_1 + 1
TEXT_3  EQU TEXT_2 + 1
TEXT_4  EQU TEXT_3 + 1
TEXT_5  EQU TEXT_4 + 1
TEXT_6  EQU TEXT_5 + 1
TEXT_7  EQU TEXT_6 + 1
TEXT_8  EQU TEXT_7 + 1
TEXT_9  EQU TEXT_8 + 1
TEXT_10 EQU TEXT_9 + 1
TEXT_11 EQU TEXT_10 + 1

POKEDEX_TEXT EQU TEXT_11 + 1
MOVE_NAMES   EQU POKEDEX_TEXT + 1

INCLUDE "macros.asm"
INCLUDE "hram.asm"


SECTION "Text 1", ROMX, BANK[TEXT_1]

_CardKeySuccessText1::
	text "Bingo!@"
	text_end

_CardKeySuccessText2::
	text_start
	line "The Card Key"
	cont "opened the door!"
	done

_CardKeyFailText::
	text "Darn! It needs a"
	line "Card Key!"
	done

_TrainerNameText::
	text_ram wcd6d
	text ": @"
	text_end

_NoNibbleText::
	text "Not even a nibble!"
	prompt

_NothingHereText::
	text "Looks like there's"
	line "nothing here."
	prompt

_ItsABiteText::
	text "Oh!"
	line "It's a bite!"
	prompt

_ExclamationText::
	text "!"
	done

_VolcanoBattleBurnText::
	text "The Volcano is"
	line "burning hot!"
	prompt

_GroundRoseText::
	text "Ground rose up"
	line "somewhere!"
	done

_BoulderText::
	text "This requires"
	line "Strength to move!"
	done

_MartSignText::
	text "All your item"
	line "needs fulfilled!"
	cont "#mon Mart"
	done

_PokeCenterSignText::
	text "Heal Your #mon!"
	line "#mon Center"
	done

_FoundItemText::
	text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_NoMoreRoomForItemText::
	text "No more room for"
	line "items!"
	done

_OaksAideHiText::
	text "Hi! Remember me?"
	line "I'm Prof.Oak's"
	cont "Aide!"

	para "If you caught @"
	text_decimal hOaksAideRequirement, 1, 3
	text_start
	line "kinds of #mon,"
	cont "I'm supposed to"
	cont "give you this"
	cont "@"
	text_ram wOaksAideRewardItemName
	text "!"

	para "So, <PLAYER>! Have"
	line "you caught at"
	cont "least @"
	text_decimal hOaksAideRequirement, 1, 3
	text " kinds of"
	cont "#mon?"
	done

_OaksAideUhOhText::
	text "Let's see..."
	line "Uh-oh! You have"
	cont "caught only @"
	text_decimal hOaksAideNumMonsOwned, 1, 3
	text_start
	cont "kinds of #mon!"

	para "You need @"
	text_decimal hOaksAideRequirement, 1, 3
	text " kinds"
	line "if you want the"
	cont "@"
	text_ram wOaksAideRewardItemName
	text "."
	done

_OaksAideComeBackText::
	text "Oh. I see."

	para "When you get @"
	text_decimal hOaksAideRequirement, 1, 3
	text_start
	line "kinds, come back"
	cont "for @"
	text_ram wOaksAideRewardItemName
	text "."
	done

_OaksAideHereYouGoText::
	text "Great! You have"
	line "caught @"
	text_decimal hOaksAideNumMonsOwned, 1, 3
	text " kinds "
	cont "of #mon!"
	cont "Congratulations!"

	para "Here you go!"
	prompt

_OaksAideGotItemText::
	text "<PLAYER> got the"
	line "@"
	text_ram wOaksAideRewardItemName
	text "!@"
	text_end

_OaksAideNoRoomText::
	text "Oh! I see you"
	line "don't have any"
	cont "room for the"
	cont "@"
	text_ram wOaksAideRewardItemName
	text "."
	done

INCLUDE "text/maps/viridian_forest.asm"
INCLUDE "text/maps/mt_moon_1f.asm"
INCLUDE "text/maps/mt_moon_b1f.asm"
INCLUDE "text/maps/mt_moon_b2f.asm"
INCLUDE "text/maps/ss_anne_1.asm"
INCLUDE "text/maps/ss_anne_2.asm"
INCLUDE "text/maps/ss_anne_3.asm"
INCLUDE "text/maps/ss_anne_5.asm"
INCLUDE "text/maps/ss_anne_6.asm"
INCLUDE "text/maps/ss_anne_7.asm"
INCLUDE "text/maps/ss_anne_8.asm"
INCLUDE "text/maps/ss_anne_9.asm"
INCLUDE "text/maps/ss_anne_10.asm"
INCLUDE "text/maps/victory_road_3f.asm"
INCLUDE "text/maps/rocket_hideout_b1f.asm"
INCLUDE "text/maps/rocket_hideout_b2f.asm"
INCLUDE "text/maps/rocket_hideout_b3f.asm"
INCLUDE "text/maps/rocket_hideout_b4f.asm"
INCLUDE "text/maps/rocket_hideout_elevator.asm"
INCLUDE "text/maps/silph_co_2f.asm"
INCLUDE "text/maps/silph_co_3f.asm"
INCLUDE "text/maps/silph_co_4f.asm"
INCLUDE "text/maps/silph_co_5f_1.asm"


SECTION "Text 2", ROMX, BANK[TEXT_2]

INCLUDE "text/maps/silph_co_5f_2.asm"
INCLUDE "text/maps/silph_co_6f.asm"
INCLUDE "text/maps/silph_co_7f.asm"
INCLUDE "text/maps/silph_co_8f.asm"
INCLUDE "text/maps/silph_co_9f.asm"
INCLUDE "text/maps/silph_co_10f.asm"
INCLUDE "text/maps/silph_co_11f.asm"
INCLUDE "text/maps/mansion_2f.asm"
INCLUDE "text/maps/mansion_3f.asm"
INCLUDE "text/maps/mansion_b1f.asm"
INCLUDE "text/maps/safari_zone_east.asm"
INCLUDE "text/maps/safari_zone_north.asm"
INCLUDE "text/maps/safari_zone_west.asm"
INCLUDE "text/maps/safari_zone_center.asm"
INCLUDE "text/maps/safari_zone_rest_house_1.asm"
INCLUDE "text/maps/safari_zone_secret_house.asm"
INCLUDE "text/maps/safari_zone_rest_house_2.asm"
INCLUDE "text/maps/safari_zone_rest_house_3.asm"
INCLUDE "text/maps/safari_zone_rest_house_4.asm"
INCLUDE "text/maps/unknown_dungeon_b1f.asm"
INCLUDE "text/maps/victory_road_1f.asm"
INCLUDE "text/maps/lance.asm"
INCLUDE "text/maps/hall_of_fame.asm"
INCLUDE "text/maps/champion.asm"
INCLUDE "text/maps/lorelei.asm"
INCLUDE "text/maps/bruno.asm"
INCLUDE "text/maps/agatha.asm"
INCLUDE "text/maps/rock_tunnel_b2f_1.asm"


SECTION "Text 3", ROMX, BANK[TEXT_3]

INCLUDE "text/maps/rock_tunnel_b2f_2.asm"
INCLUDE "text/maps/seafoam_islands_b4f.asm"

;joenote - adding Mateo's move relearner/deleter files
INCLUDE "text/move_deleter.asm"
INCLUDE "text/move_relearner.asm"

_AIBattleWithdrawText::
	text_ram wTrainerName
	text " with-"
	line "drew @"
	text_ram wEnemyMonNick
	text "!"
	prompt

_AIBattleUseItemText::
	text_ram wTrainerName
	text_start
	line "used @"
	text_ram wcd6d
	text_start
	cont "on @"
	text_ram wEnemyMonNick
	text "!"
	prompt

_TradeWentToText::
	text_ram wStringBuffer
	text " went"
	line "to @"
	text_ram wLinkEnemyTrainerName
	text "."
	done

_TradeForText::
	text "For <PLAYER>'s"
	line "@"
	text_ram wStringBuffer
	text ","
	done

_TradeSendsText::
	text_ram wLinkEnemyTrainerName
	text " sends"
	line "@"
	text_ram wcd6d
	text "."
	done

_TradeWavesFarewellText::
	text_ram wLinkEnemyTrainerName
	text " waves"
	line "farewell as"
	done

_TradeTransferredText::
	text_ram wcd6d
	text " is"
	line "transferred."
	done

_TradeTakeCareText::
	text "Take good care of"
	line "@"
	text_ram wcd6d
	text "."
	done

_TradeWillTradeText::
	text_ram wLinkEnemyTrainerName
	text " will"
	line "trade @"
	text_ram wcd6d
	text_start
	done

_TradeforText::
	text "for <PLAYER>'s"
	line "@"
	text_ram wStringBuffer
	text "."
	done

_PlaySlotMachineText::
	text "A slot machine!"
	line "Want to play?"
	done

_OutOfCoinsSlotMachineText::
	text "Darn!"
	line "Ran out of Coins!"
	done

_BetHowManySlotMachineText::
	text "Bet how many"
	line "Coins?"
	done

_StartSlotMachineText::
	text "Start!"
	done

_NotEnoughCoinsSlotMachineText::
	text "Not enough"
	line "Coins!"
	prompt

_OneMoreGoSlotMachineText::
	text "One more "
	line "go?"
	done


_LinedUpText::
	text " lined up!"
	line "Scored @"
	text_ram wStringBuffer
	text " Coins!"
	done

_NotThisTimeText::
	text "Not this time!"
	prompt

_YeahText::
	text "Yeah!@"
	text_end

_DexSeenOwnedText::
	text "#dex   Seen:@"
	text_decimal wDexRatingNumMonsSeen, 1, 3
	text " "
	line "         Owned:@"
	text_decimal wDexRatingNumMonsOwned, 1, 3
	text " "
	done

_DexRatingText::
	text "#dex Rating:"
	done

_GymStatueText1::
	text_ram wGymCityName
	text_start
	line "#mon Gym"
	cont "Leader: @"
	text_ram wGymLeaderName
	text_start

	para "Winning Trainers:"
	line "<RIVAL>"
	done

_GymStatueText2::
	text_ram wGymCityName
	text_start
	line "#mon Gym"
	cont "Leader: @"
	text_ram wGymLeaderName
	text_start

	para "Winning Trainers:"
	line "<RIVAL>"
	cont "<PLAYER>"
	done

_GymStatueText3::
	text_ram wGymCityName
	text_start
	line "#mon Gym"
	cont "Leader: @"
	text_ram wGymLeaderName
	text_start

	para "Winning Trainers:"
	line "<RIVAL>"
	cont "<PLAYER>"
	cont "Followed by"
	cont "a short list"
	cont "of other names."
	done

_ViridianCityPokecenterGuyText::
	text "#mon Centers"
	line "heal your tired,"
	cont "hurt or fainted"
	cont "#mon!"
	done

_PewterCityPokecenterGuyText::
	text "Yawn!"

	para "When Jigglypuff"
	line "sings, #mon"
	cont "get drowsy..."

	para "...Me too..."
	line "Snore..."
	done

_CeruleanPokecenterGuyText::
	text "Bill has lots of"
	line "#mon!"

	para "He collects rare"
	line "ones too!"
	done

_LavenderPokecenterGuyText::
	text "Cubones wear"
	line "skulls, right?"

	para "People will pay a"
	line "lot for one!"
	done

_MtMoonPokecenterBenchGuyText::
	text "If you have too"
	line "many #mon, you"
	cont "should store them"
	cont "via PC!"
	done

_RockTunnelPokecenterGuyText::
	text "I heard that"
	line "Ghosts haunt"
	cont "Lavender Town!"
	done

_VermilionPokecenterGuyText::
	text "It is true that a"
	line "higher level"
	cont "#mon will be"
	cont "more powerful..."

	para "But, all #mon"
	line "will have weak"
	cont "points against"
	cont "specific types."

	para "So, there is no"
	line "universally"
	cont "strong #mon."
	done

_CeladonCityPokecenterGuyText::
	text "If I had a Bike,"
	line "I would go to"
	cont "Cycling Road!"
	done

_FuchsiaCityPokecenterGuyText::
	text "If you're studying "
	line "#mon, visit"
	cont "the Safari Zone."

	para "It has all sorts"
	line "of rare #mon."
	done

_CinnabarPokecenterGuyText::
	text "#mon can still"
	line "learn techniques"
	cont "after canceling"
	cont "evolution."

	para "Evolution can wait"
	line "until new moves"
	cont "have been learned."
	done

_SaffronCityPokecenterGuyText1::
	text "It would be great"
	line "if the Elite Four"
	cont "came and stomped"
	cont "Team Rocket!"
	done

_SaffronCityPokecenterGuyText2::
	text "Team Rocket took"
	line "off! We can go"
	cont "out safely again!"
	cont "That's great!"
	done

_CeladonCityHotelText::
	text "My sis brought me"
	line "on this vacation!"
	done

_BookcaseText::
	text "Crammed full of"
	line "#mon books!"
	done

_NewBicycleText::
	text "A shiny new"
	line "Bicycle!"
	done

_PushStartText::
	text "Push START to"
	line "open the Menu!"

	;joenote - add hotkey info
	para "You can switch "
	line "from one bag to"
	cont "the other in the" 
	cont "Item Menu with"
	cont "START."

	para "You can also"
	cont "sort items by"
	line "holding SELECT"
	cont "and START!"

	para "You can move"
	line "an item from"
	cont "one compartment"
	cont "to the other"
	cont "by pushing START"
	cont "while holding"
	cont "LEFT"
	done

_SaveOptionText::
	text "The Save option is"
	line "on the Menu"
	cont "screen."
	done

_StrengthsAndWeaknessesText::
	text "All #mon types"
	line "have strong and"
	cont "weak points"
	cont "against others."
	done

_TimesUpText::
	text "PA: Ding-dong!"

	para "Time's up!"
	prompt

_GameOverText::
	text "PA: Your Safari"
	line "Game is over!"
	done

_CinnabarGymQuizIntroText::
	text "#mon Quiz!"

	para "Get it right and"
	line "the door opens to"
	cont "the next room!"

	para "Get it wrong and"
	line "face a trainer!"

	para "If you want to"
	line "conserve your"
	cont "#mon for the"
	cont "Gym Leader..."

	para "Then get it right!"
	line "Here we go!"
	prompt

_CinnabarQuizQuestionsText1::
;	text "Caterpie evolves"	;joenote - this is supposed to be METAPOD
	text "Metapod evolves"	
	line "into Butterfree?"
	done

_CinnabarQuizQuestionsText2::
	text "There are 9"
	line "certified #mon"
	cont "League Badges?"
	done

_CinnabarQuizQuestionsText3::
	text "Poliwag evolves 3"
	line "times?"
	done

_CinnabarQuizQuestionsText4::	;joenote - re-worded to be less contrived
;	text "Are thunder moves"
;	line "effective against"
;	cont "ground element-"
;	cont "type #mon?"
	text "Are electric-type"
	line "moves effective"
	cont "against ground-"
	cont "type #mon?"
	done

_CinnabarQuizQuestionsText5::
	text "#mon of the"
	line "same kind and"
;	cont "level are not"	;joenote - re-worded 
	cont "level are rarely"
	cont "identical?"
	done

_CinnabarQuizQuestionsText6::
	text "TM28 contains"
	line "Tombstoner?"
	done

_CinnabarGymQuizCorrectText::
	text "You're absolutely"
	line "correct!"

	para "Go on through!@"
	text_end

_CinnabarGymQuizIncorrectText::
	text "Sorry! Bad call!"
	prompt

_MagazinesText::
	text "#mon magazines!"

	para "#mon notebooks!"

	para "#mon graphs!"
	done

_BillsHouseMonitorText::
	text "Teleporter is"
	line "displayed on the"
	cont "PC monitor."
	done

_BillsHouseInitiatedText::
	text "<PLAYER> initiated"
	line "Teleporter's Cell"
	cont "Separator!@"
	text_end

_BillsHousePokemonListText1::
	text "Bill's favorite"
	line "#mon list!"
	prompt

_BillsHousePokemonListText2::
	text "Which #mon do"
	line "you want to see?"
	done

_OakLabEmailText::
	text "There's an e-mail"
	line "message here!"

	para "..."

	para "Calling all"
	line "#mon trainers!"

	para "The elite trainers"
	line "of #mon League"
	cont "are ready to take"
	cont "on all comers!"

	para "Bring your best"
	line "#mon and see"
	cont "how you rate as a"
	cont "trainer!"

	para "#mon League HQ"
	line "Indigo Plateau"

	para "PS: Prof.Oak,"
	line "please visit us!"
	cont "..."
	done

_GameCornerCoinCaseText::
	text "A Coin Case is"
	line "required!"
	done

_GameCornerNoCoinsText::
	text "You don't have"
	line "any Coins!"
	done

_GameCornerOutOfOrderText::
	text "OUT OF ORDER"
	line "This is broken."
	done

_GameCornerOutToLunchText::
	text "OUT TO LUNCH"
	line "This is reserved."
	done

_GameCornerSomeonesKeysText::
	text "Someone's keys!"
	line "They'll be back."
	done

_JustAMomentText::
	text "Just a moment."
	done

TMNotebookText::
	text "It's a pamphlet"
	line "on TMs."

	para "..."

	para "There are 50 TMs"
	line "in all."

	para "There are also 5"
	line "HMs that can be"
	cont "used repeatedly."

	para "Silph Co.@"
	text_end

_TurnPageText::
	text "Turn the page?"
	done

_ViridianSchoolNotebookText5::
	text "Girl: Hey! Don't"
	line "look at my notes!@"
	text_end

_ViridianSchoolNotebookText1::
	text "Looked at the"
	line "notebook!"

	para "First page..."

	para "# Balls are"
	line "used to catch"
	cont "#mon."

	para "Up to 6 #mon"
	line "can be carried."

	para "People who raise"
	line "and make #mon"
	cont "fight are called"
	cont "#mon trainers."
	prompt

_ViridianSchoolNotebookText2::
	text "Second page..."

	para "A healthy #mon"
	line "may be hard to"
	cont "catch, so weaken"
	cont "it first!"

	para "Sleep, paralysis"
	line "and damage is"
	cont "effective!"
	prompt

_ViridianSchoolNotebookText3::
	text "Third page..."

	para "#mon trainers"
	line "seek others to"
	cont "engage in #mon"
	cont "fights."

	para "Battles are"
	line "constantly fought"
	cont "at #mon Gyms."
	prompt

_ViridianSchoolNotebookText4::
	text "Fourth page..."

	para "The goal for"
	line "#mon trainers"
	cont "is to beat the "
	cont "top 8 #mon"
	cont "Gym Leaders."

	para "Do so to earn the"
	line "right to face..."

	para "The Elite Four of"
	line "#mon League!"
	prompt

_EnemiesOnEverySideText::
	text "Enemies on every"
	line "side!"
	done

_WhatGoesAroundComesAroundText::
	text "What goes around"
	line "comes around!"
	done

_FightingDojoText::
	text "Fighting Dojo"
	done

_IndigoPlateauHQText::
	text "Indigo Plateau"
	line "#mon League HQ"
	done

_RedBedroomSNESText::
	text "<PLAYER> is"
	line "playing the SNES!"
	cont "...Okay!"
	cont "It's time to go!"
	done

_AerodactylFossilText::
	text "Aerodactyl Fossil"
	line "A primitive and"
	cont "rare #mon."
	done

_KabutopsFossilText::
	text "Kabutops Fossil"
	line "A primitive and"
	cont "rare #mon."
	done

_LinkCableHelpText1::
	text "Trainer Tips"

	para "Using a Game Link"
	line "Cable"
	prompt

_LinkCableHelpText2::
	text "Which heading do"
	line "you want to read?"
	done

_LinkCableInfoText1::
	text "When you have"
	line "linked your Game"
	cont "Boy with another"
	cont "Game Boy, talk to"
	cont "the attendant on"
	cont "the right in any"
	cont "#mon Center."
	prompt

_LinkCableInfoText2::
	text "Colosseum lets"
	line "you play against"
	cont "a friend."
	prompt

_LinkCableInfoText3::
	text "Trade Center is"
	line "used for trading"
	cont "#mon."
	prompt

_ViridianSchoolBlackboardText1::
	text "The blackboard"
	line "describes #mon"
	cont "Status changes"
	cont "during battles."
	prompt

_ViridianSchoolBlackboardText2::
	text "Which heading do"
	line "you want to read?"
	done

_ViridianBlackboardSleepText::
	text "A #mon can't"
	line "attack if it's"
	cont "asleep!"

	para "Only one party"
	line "member can be"
	cont "asleep at a time."

	para "#mon will stay"
	line "asleep even after"
	cont "battles."

	para "Use Awakening to"
	line "wake them up!"
	prompt

_ViridianBlackboardPoisonText::
	text "When poisoned, a"
	line "#mon's health"
	cont "steadily drops."

	para "Poison lingers"
	line "after battles."

	para "Use an Antidote"
	line "to cure poison!"
	prompt

_ViridianBlackboardPrlzText::
	text "Paralysis can"
	line "make #mon"
	cont "moves misfire!"

	para "It cuts Speed"
	line "by 50 percent."

	para "Paralysis remains"
	line "after battles."

	para "Use Parlyz Heal"
	line "for treatment!"
	prompt

_ViridianBlackboardBurnText::
	text "A burn reduces"
	line "Attack power."
	cont "It also causes"
	cont "ongoing damage."

	para "Burns remain"
	line "after battles."

	para "Use Burn Heal to"
	line "cure a burn!"
	prompt

_ViridianBlackboardFrozenText::
	text "If frozen, a"
	line "#mon becomes"
	cont "totally immobile!"

	para "Only one party"
	line "member can be"
	cont "frozen at a time."

	para "It stays frozen"
	line "even after the"
	cont "battle ends."

	para "Use Ice Heal to"
	line "thaw out #mon!"
	prompt

_VermilionGymTrashText::
	text "Nope, there's"
	line "only trash here."
	done

_VermilionGymTrashSuccessText1::
	text "Hey! There's a"
	line "switch under the"
	cont "trash!"
	cont "Turn it on!"

	para "The 1st electric"
	line "lock opened!@"
	text_end

_VermilionGymTrashSuccessText2::
	text "Hey! There's"
	line "another switch"
	cont "under the trash!"
	cont "Turn it on!"
	prompt

_VermilionGymTrashSuccessText3::
	text "The 2nd electric"
	line "lock opened!"

	para "The motorized door"
	line "opened!@"
	text_end

_VermilionGymTrashFailText::
	text "A really"
	line "disgusting trash.@"
	text_end

_FoundHiddenItemText::
	text "<PLAYER> found"
	line "@"
	text_ram wcd6d
	text "!@"
	text_end

_HiddenItemBagFullText::
	text "But, <PLAYER> has"
	line "no more room for"
	cont "other items!"
	done

_FoundHiddenCoinsText::
	text "<PLAYER> found"
	line "@"
	text_bcd hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " Coins!@"
	text_end

_FoundHiddenCoins2Text::
	text "<PLAYER> found"
	line "@"
	text_bcd hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " Coins!@"
	text_end

_DroppedHiddenCoinsText::
	text_start
	para "Oops! Dropped"
	line "some Coins!"
	done

_IndigoPlateauStatuesText1::
	text "Indigo Plateau"
	prompt

_IndigoPlateauStatuesText2::
	text "The ultimate goal"
	line "of trainers!"
	cont "#mon League HQ"
	done

_IndigoPlateauStatuesText3::
	text "The highest"
	line "#mon authority"
	cont "#mon League HQ"
	done

_PokemonBooksText::
	text "Crammed full of"
	line "#mon books!"
	done

_DiglettSculptureText::
	text "It's a statue of"
	line "a fat Buddha."
	done

_ElevatorText::
	text "This is an"
	line "elevator."
	done

_TownMapText::
	text "A Town Map.@"
	text_end

_PokemonStuffText::
	text "Wow! Tons of"
	line "#mon stuff!"
	done

_OutOfSafariBallsText::
	text "PA: Ding-dong!"

	para "You are out of"
	line "Safari Balls!"
	prompt

_WildRanText::
	text "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "ran!"
	prompt

_EnemyRanText::
	text "Enemy @"
	text_ram wEnemyMonNick
	text_start
	line "ran!"
	prompt

_HurtByPoisonText::
	text "<USER>'s"
	line "hurt by poison!"
	prompt

_HurtByBurnText::
	text "<USER>'s"
	line "hurt by the burn!"
	prompt

_HurtByLeechSeedText::
	text "Leech Seed saps"
	line "<USER>!"
	prompt

_EnemyMonFaintedText::
	text "Enemy @"
	text_ram wEnemyMonNick
	text_start
	line "fainted!"
	prompt

_MoneyForWinningText::
	text "<PLAYER> got ¥@"
	text_bcd wAmountMoneyWon, 3 | LEADING_ZEROES | LEFT_ALIGN
	text_start
	line "for winning!"
	prompt

_TrainerDefeatedText::
	text "<PLAYER> defeated"
	line "@"
	text_ram wTrainerName
	text "!"
	prompt

_PlayerMonFaintedText::
	text_ram wBattleMonNick
	text_start
	line "fainted!"
	prompt

_UseNextMonText::
	text "Use next #mon?"
	done

;_Sony1WinText::	;joenote - made redundant
;	text "<RIVAL>: Yeah! Am"
;	line "I great or what?"
;	prompt

_PlayerBlackedOutText2::
	text "<PLAYER> is out of"
	line "useable #mon!"

	para "<PLAYER> blacked"
	line "out!"
	prompt

_LinkBattleLostText::
	text "<PLAYER> lost to"
	line "@"
	text_ram wTrainerName
	text "!"
	prompt

_TrainerAboutToUseText::
	text_ram wTrainerName
	text " is"
	line "about to use"
	cont "@"
	text_ram wEnemyMonNick
	text "!"

	para "Will <PLAYER>"
	line "change #mon?"
	done

_TrainerSentOutText::
	text_ram wTrainerName
	text " sent"
	line "out @"
	text_ram wEnemyMonNick
	text "!"
	done

_NoWillText::
	text "There's no will"
	line "to fight!"
	prompt

_CantEscapeText::
	text "Can't escape!"
	prompt

_NoRunningText::
	text "No! There's no"
	line "running from a"
	cont "trainer battle!"
	prompt

_GotAwayText::
	text "Got away safely!"
	prompt

_ItemsCantBeUsedHereText::
	text "Items can't be"
	line "used here."
	prompt

_AlreadyOutText::
	text_ram wBattleMonNick
	text " is"
	line "already out!"
	prompt

_MoveNoPPText::
	text "No PP left for"
	line "this move!"
	prompt

_MoveDisabledText::
	text "The move is"
	line "disabled!"
	prompt

_NoMovesLeftText::
	text_ram wBattleMonNick
	text " has no"
	line "moves left!"
	done

_MultiHitText::
	text "Hit the enemy"
	line "@"
	text_decimal wPlayerNumHits,1,1
	text " times!"
	prompt

_ScaredText::
	text_ram wBattleMonNick
	text " is too"
	line "scared to move!"
	prompt

_GetOutText::
	text "Ghost: Get out..."
	line "Get out..."
	prompt

_FastAsleepText::
	text "<USER>"
	line "is fast asleep!"
	prompt

_WokeUpText::
	text "<USER>"
	line "woke up!"
	prompt

_IsFrozenText::
	text "<USER>"
	line "is frozen solid!"
	prompt

_FullyParalyzedText::
	text "<USER>'s"
	line "fully paralyzed!"
	prompt

_FlinchedText::
	text "<USER>"
	line "flinched!"
	prompt

_MustRechargeText::
	text "<USER>"
	line "must recharge!"
	prompt

_DisabledNoMoreText::
	text "<USER>'s"
	line "disabled no more!"
	prompt

_IsConfusedText::
	text "<USER>"
	line "is confused!"
	prompt

_HurtItselfText::
	text "It hurt itself in"
	line "its confusion!"
	prompt

_ConfusedNoMoreText::
	text "<USER>'s"
	line "confused no more!"
	prompt

_SavingEnergyText::
	text "<USER>"
	line "is saving energy!"
	prompt

_UnleashedEnergyText::
	text "<USER>"
	line "unleashed energy!"
	prompt

_ThrashingAboutText::
	text "<USER>'s"
	line "thrashing about!"
	done

_AttackContinuesText::
	text "<USER>'s"
	line "attack continues!"
	done

_CantMoveText::
	text "<USER>"
	line "can't move!"
	prompt

_MoveIsDisabledText::
	text "<USER>'s"
	line "@"
	text_ram wcd6d
	text " is"
	line "disabled!"
	prompt

_MonName1Text::
	text "<USER>@"
	text_end

_UsedText::
	text_start
	line "used @"
	text_end

_InsteadText::
	text "instead,"
	cont "@"
	text_end

_CF4BText::
	text_ram wStringBuffer
	text "@"

_ExclamationPointText::
	text_start
	done

_AttackMissedText::
	text "<USER>'s"
	line "attack missed!"
	prompt

_KeptGoingAndCrashedText::
	text "<USER>"
	line "kept going and"
	cont "crashed!"
	prompt

;joenote - the same in english as _IsUnaffectedText, so it's redundant 
;_UnaffectedText::
;	text "<TARGET>'s"
;	line "unaffected!"
;	prompt

_DoesntAffectMonText::
	text "It doesn't affect"
	line "<TARGET>!"
	prompt

_CriticalHitText::
	text "Critical hit!"
	prompt

_OHKOText::
	text "One-hit KO!"
	prompt

_LoafingAroundText::
	text_ram wBattleMonNick
	text " is"
	line "loafing around."
	prompt

_BeganToNapText::
	text_ram wBattleMonNick
	text " is"
	line "began to nap!"
	prompt

_WontObeyText::
	text_ram wBattleMonNick
	text " won't"
	line "obey!"
	prompt

_TurnedAwayText::
	text_ram wBattleMonNick
	text " turned" 
	line "away!"
	prompt

_IgnoredOrdersText::
	text_ram wBattleMonNick
	text_start
	line "ignored orders!"
	prompt

_SubstituteTookDamageText::
	text "The Substitute"
	line "took damage for"
	cont "<TARGET>!"
	prompt

_SubstituteBrokeText::
	text "<TARGET>'s"
	line "Substitute broke!"
	prompt

_BuildingRageText::
	text "<USER>'s"
	line "Rage is building!"
	prompt

_MirrorMoveFailedText::
	text "The Mirror Move"
	next "failed!"
	prompt

_HitXTimesText::
	text "Hit @"
	text_decimal wEnemyNumHits, 1, 1
	text " times!"
	prompt

_DisplayLevelCap::
	text "You can raise"
	line "your #mon up"
	cont "to level @"
	text_decimal wMaxLevel, 1, 3
	text "!"
	done

_DisplayObedience::
	text "#mon obtained"
	line "in a trade will"
	cont "obey up to"
	cont "level @"
	text_decimal wMaxLevel, 1, 3
	text "!"
	done

_LevelCappedText::
	text_ram wcd6d
	text " reached"
	line "its max level!"
	prompt

_GainedText::
	text_ram wcd6d
	text " gained"
	line "@"
	text_end

_WithExpAllText::
	text "Party gained"
	line "@"
	text_end

_BoostedText::
	text "a boosted"
	line "@"
	text_end

_ExpPointsText::
	text_decimal wExpAmountGained, 2, 5	;joenote - increased to 5 digits
	text " Exp. Points!"
	prompt

_GrewLevelText::
	text_ram wcd6d
	text " grew"
	line "to level @"
	text_decimal wCurEnemyLVL, 1, 3
	text "!@"
	text_end

_WildMonAppearedText::
	text "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "appeared!"
	prompt

_HookedMonAttackedText::
	text "The hooked"
	line "@"
	text_ram wEnemyMonNick
	text_start
	cont "attacked!"
	prompt

_EnemyAppearedText::
	text_ram wEnemyMonNick
	text_start
	line "appeared!"
	prompt

_TrainerWantsToFightText::
	text_ram wTrainerName
	text " wants"
	line "to fight!"
	prompt

_UnveiledGhostText::
	text "Silph Scope"
	line "unveiled the"
	cont "GhosT's identity!"
	prompt

_GhostCantBeIDdText::
	text "Darn! The Ghost"
	line "can't be ID'd!"
	prompt

_GoText::
	text "Go! @"
	text_end

_DoItText::
	text "Do it! @"
	text_end

_GetmText::
	text "Get'm! @"
	text_end

_EnemysWeakText::
	text "The enemy's weak!"
	line "Get'm! @"
	text_end

_PlayerMon1Text::
	text_ram wBattleMonNick
	text "!"
	done

_PlayerMon2Text::
	text_ram wBattleMonNick
	text " @"
	text_end

_EnoughText::
	text "enough!@"
	text_end

_OKExclamationText::
	text "OK!@"
	text_end

_GoodText::
	text "good!@"
	text_end

_ComeBackText::
	text_start
	line "Come back!"
	text_end

_HyperEffectiveText::
	text "It's ultra"
	line "effective!"
	prompt

_SuperEffectiveText::
	text "It's super"
	line "effective!"
	prompt

_NotVeryEffectiveText::
	text "It's not very"
	line "effective..."
	prompt

_ReallyNotVeryEffectiveText::
	text "It's really not"
	line "effective..."
	prompt

_SafariZoneEatingText::
	text "Wild @"
	text_ram wEnemyMonNick
	text_start
	line "is eating!"
	prompt

_SafariZoneAngryText::
	text "Wild@"
	text_ram wEnemyMonNick
	text_start
	line "is angry!"
	prompt

; link battle
_YouWinText::
	text "  You win"
	prompt

_YouLoseText::
	text "  You lose"
	prompt

_DrawText::
	text "Draw"
	prompt

; money related
_PickUpPayDayMoneyText::
	text "<PLAYER> picked up"
	line "¥@"
	text_bcd wTotalPayDayMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "!"
	prompt

_ClearSaveDataText::
	text "Clear all saved"
	line "data?"
	done

_WhichFloorText::
	text "Which floor do"
	line "you want? "
	done

_PartyMenuNormalText::
	text "Choose a #mon."
	done

_PartyMenuItemUseText::
	text "Use item on which"
	line "#mon?"
	done

_PartyMenuBattleText::
	text "Bring out which"
	line "#mon?"
	done

_PartyMenuUseTMText::
	text "Use machine on"
	line "which #mon?"
	done

_PartyMenuSwapMonText::
	text "Move #mon"
	line "where?"
	done

_PotionText::
	text_ram wcd6d
	text_start
	line "recovered by @"
	text_decimal wHPBarHPDifference, 2, 3
	text "!"
	done

_AntidoteText::
	text_ram wcd6d
	text " was"
	line "cured of poison!"
	done

_ParlyzHealText::
	text_ram wcd6d
	text "'s"
	line "rid of paralysis!"
	done

_BurnHealText::
	text_ram wcd6d
	text "'s"
	line "burn was healed!"
	done

_IceHealText::
	text_ram wcd6d
	text " was"
	line "defrosted!"
	done

_AwakeningText::
	text_ram wcd6d
	text_start
	line "woke up!"
	done

_FullHealText::
	text_ram wcd6d
	text "'s"
	line "health returned!"
	done

_ReviveText::
	text_ram wcd6d
	text_start
	line "is revitalized!"
	done

_RareCandyText::
	text_ram wcd6d
	text " grew"
	line "to level @"
	text_decimal wCurEnemyLVL, $1,$3
	text "!@"
	text_end

_TurnedOnPC1Text::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

_AccessedBillsPCText::
	text "Accessed Bill's"
	line "PC."

	para "Accessed #mon"
	line "Storage System."
	prompt

_AccessedSomeonesPCText::
	text "Accessed someone's"
	line "PC."

	para "Accessed #mon"
	line "Storage System."
	prompt

_AccessedMyPCText::
	text "Accessed my PC."

	para "Accessed Item"
	line "Storage System."
	prompt

_TurnedOnPC2Text::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

_WhatDoYouWantText::
	text "What do you want"
	line "to do?"
	done

_WhatToDepositText::
	text "What do you want"
	line "to deposit?"
	done

_DepositHowManyText::
	text "How many?"
	done

_ItemWasStoredText::
	text "Item"
	line "@"
	text_ram wcd6d
	text " was"
	cont "stored via PC."
	prompt

_NothingToDepositText::
	text "You have nothing"
	line "to deposit."
	prompt

_NoRoomToStoreText::
	text "No room left to"
	line "store items."
	prompt

_WhatToWithdrawText::
	text "What do you want"
	line "to withdraw?"
	done

_WithdrawHowManyText::
	text "How many?"
	done

_WithdrewItemText::
	text "Withdrew"
	line "@"
	text_ram wcd6d
	text "."
	prompt

_NothingStoredText::
	text "There is nothing"
	line "stored."
	prompt

_CantCarryMoreText::
	text "You can't carry"
	line "any more items."
	prompt

_WhatToTossText::
	text "What do you want"
	line "to toss away?"
	done

_TossHowManyText::
	text "How many?"
	done

_AccessedHoFPCText::
	text "Accessed #mon"
	line "League's site."

	para "Accessed the Hall"
	line "of Fame List."
	prompt

_SwitchOnText::
	text "Switch on!"
	prompt

_WhatText::
	text "What?"
	done

_ViewModeText::
	text "view Mode"
	done

_DepositWhichMonText::
	text "Deposit which"
	line "#mon?"
	done

_MonWasStoredText::
	text_ram wStringBuffer
	text " was"
	line "stored in Box @"
	text_ram wBoxNumString
	text "."
	prompt

_CantDepositLastMonText::
	text "You can't deposit"
	line "the last #mon!"
	prompt

_BoxFullText::
	text "Oops! This Box is"
	line "full of #mon."
	prompt

_MonIsTakenOutText::
	text_ram wStringBuffer
	text " is"
	line "taken out."
	cont "Got @"
	text_ram wStringBuffer
	text_start
	cont "."
	prompt

_NoMonText::
	text "What? There are"
	line "no #mon here!"
	prompt

_CantTakeMonText::
	text "You can't take"
	line "any more #mon."

	para "Deposit #mon"
	line "first or push"
	cont "SELECT to switch"
	cont "to View Mode"
	prompt

_ReleaseWhichMonText::
	text "Release which"
	line "#mon?"
	done

_OnceReleasedText::
	text "Once released,"
	line "@"
	text_ram wStringBuffer
	text " is"
	cont "gone forever. OK?"
	done

_MonWasReleasedText::
	text_ram wStringBuffer
	text " was"
	line "released outside."
	cont "Bye @"

_CF4BExclamationText::
	text_ram wStringBuffer
	text "!"
	prompt

_PressStartToReleaseText::
	text "Push START"
	line "to confirm.@"
	text_end

_RequireCoinCaseText::
	text "A Coin Case is"
	line "required!@"
	text_end

_ExchangeCoinsForPrizesText::
	text "We exchange your"
	line "Coins for prizes."
	prompt

_WhichPrizeText::
	text "Which prize do"
	line "you want?"
	done

_HereYouGoText::
	text "Here you go!@"
	text_end

_SoYouWantPrizeText::
	text "So, you want"
	line "@"
	text_ram wcd6d
	text "?"
	done

_SorryNeedMoreCoinsText::
	text "Sorry, you need"
	line "more Coins.@"
	text_end

_OopsYouDontHaveEnoughRoomText::
	text "Oops! You don't"
	line "have enough room.@"
	text_end

_OhFineThenText::
	text "Oh, fine then.@"
	text_end

_GetDexRatedText::
	text "Want to get your"
	line "#dex rated?"
	done

_ClosedOaksPCText::
	text "Closed link to"
	line "Prof.Oak's PC.@"
	text_end

_AccessedOaksPCText::
	text "Accessed Prof."
	line "Oak's PC."

	para "Accessed #dex"
	line "Rating System."
	prompt

_WhereWouldYouLikeText::
	text "Where would you"
	line "like to go?"
	done

_PleaseWaitText::
	text "OK, please wait"
	line "just a moment."
	done

_LinkCanceledText::
	text "The link was"
	line "canceled."
	done

INCLUDE "text/oakspeech.asm"

_DoYouWantToNicknameText::
	text "Do you want to"
	line "give a nickname"
	cont "to @"
	text_ram wcd6d
	text "?"
	done

_YourNameIsText::
	text "Right! So your"
	line "name is <PLAYER>!"
	prompt

_HisNameIsText::
	text "That's right! I"
	line "remember now! His"
	cont "name is <RIVAL>!"
	prompt

_WillBeTradedText::
	text_ram wNameOfPlayerMonToBeTraded
	text " and"
	line "@"
	text_ram wcd6d
	text " will"
	cont "be traded."
	done

_ErrorCharText::
	text_decimal hSpriteIndexOrTextID,1,2
	text " ERROR."
	done

_ContTextText::
	text $4B,"@@"

INCLUDE "text/maps/digletts_cave_route_2_entrance.asm"
INCLUDE "text/maps/viridian_forest_exit.asm"
INCLUDE "text/maps/route_2_house.asm"
INCLUDE "text/maps/route_2_gate.asm"
INCLUDE "text/maps/viridian_forest_entrance.asm"
INCLUDE "text/maps/mt_moon_pokecenter.asm"
INCLUDE "text/maps/saffron_gates.asm"
INCLUDE "text/maps/daycare_1.asm"
INCLUDE "text/maps/mt_moon_square.asm"


SECTION "Text 4", ROMX, BANK[TEXT_4]

INCLUDE "text/maps/daycare_2.asm"
INCLUDE "text/maps/underground_path_route_6_entrance.asm"
INCLUDE "text/maps/underground_path_route_7_entrance.asm"
INCLUDE "text/maps/underground_path_route_7_entrance_unused.asm"
INCLUDE "text/maps/underground_path_route_8_entrance.asm"
INCLUDE "text/maps/underground_path_we.asm"	;joenote - added this file for custom npc
INCLUDE "text/maps/rock_tunnel_pokecenter.asm"
INCLUDE "text/maps/rock_tunnel_b1f.asm"
INCLUDE "text/maps/power_plant.asm"
INCLUDE "text/maps/route_11_gate.asm"
INCLUDE "text/maps/route_11_gate_upstairs.asm"
INCLUDE "text/maps/digletts_cave_route_11_entrance.asm"
INCLUDE "text/maps/route_12_gate.asm"
INCLUDE "text/maps/route_12_gate_upstairs.asm"
INCLUDE "text/maps/route_12_house.asm"
INCLUDE "text/maps/route_15_gate.asm"
INCLUDE "text/maps/route_15_gate_upstairs.asm"
INCLUDE "text/maps/route_16_gate.asm"
INCLUDE "text/maps/route_16_gate_upstairs.asm"
INCLUDE "text/maps/route_16_house.asm"
INCLUDE "text/maps/route_18_gate.asm"
INCLUDE "text/maps/route_18_gate_upstairs.asm"
INCLUDE "text/maps/pokemon_league_gate.asm"
INCLUDE "text/maps/victory_road_2f.asm"
INCLUDE "text/maps/bills_house.asm"
INCLUDE "text/maps/route_1.asm"
INCLUDE "text/maps/route_2.asm"
INCLUDE "text/maps/route_3.asm"
INCLUDE "text/maps/route_4.asm"
INCLUDE "text/maps/route_5.asm"
INCLUDE "text/maps/route_6.asm"
INCLUDE "text/maps/route_7.asm"
INCLUDE "text/maps/route_8.asm"
INCLUDE "text/maps/route_9.asm"
INCLUDE "text/maps/route_10.asm"
INCLUDE "text/maps/route_10_south.asm"
INCLUDE "text/maps/route_11_1.asm"


SECTION "Text 5", ROMX, BANK[TEXT_5]

INCLUDE "text/maps/route_11_2.asm"
INCLUDE "text/maps/route_12.asm"
INCLUDE "text/maps/route_13.asm"
INCLUDE "text/maps/route_14.asm"
INCLUDE "text/maps/route_15.asm"
INCLUDE "text/maps/route_16.asm"
INCLUDE "text/maps/route_16_west.asm"
INCLUDE "text/maps/route_16_west_house.asm"
INCLUDE "text/maps/route_16_west_gate.asm"
INCLUDE "text/maps/route_17.asm"
INCLUDE "text/maps/route_18.asm"
INCLUDE "text/maps/route_19.asm"
INCLUDE "text/maps/route_19_beach_house.asm"
INCLUDE "text/maps/route_20.asm"
INCLUDE "text/maps/route_21.asm"
INCLUDE "text/maps/route_22.asm"
INCLUDE "text/maps/route_22_gate_upstairs.asm"
INCLUDE "text/maps/route_23.asm"
INCLUDE "text/maps/route_24_1.asm"


SECTION "Text 6", ROMX, BANK[TEXT_6]

INCLUDE "text/maps/route_24_2.asm"
INCLUDE "text/maps/route_25.asm"
INCLUDE "text/maps/bills_garden.asm"
INCLUDE "text/maps/volcano_1f.asm"
INCLUDE "text/maps/volcano_b1f.asm"
INCLUDE "text/maps/volcano_b2f.asm"

_FileDataDestroyedText::
	text "The file data is"
	line "destroyed!"
	prompt

_WouldYouLikeToSaveText::
	text "Would you like to"
	line "save the game?"
	done

_GameSavedText::
	text "<PLAYER> saved"
	line "the game!"
	done

_OlderFileWillBeErasedText::
	text "The older file"
	line "will be erased to"
	cont "save. Okay?"
	done

_WhenYouChangeBoxText::
	text "When you change a"
	line "#mon Box, data"
	cont "will be saved."

	para "Is that okay?"
	done

_ChooseABoxText::
	text "Choose a"
	line "<PKMN> Box.@"
	text_end

_SkippedForever::
 	text "This question"
	line "won't show again."
 	prompt
 
_ChooseABoxDataWillSaveText::
 	text "Choose a"
	line "<PKMN> Box.@"
 	text_end

_EvolvedText::
	text_ram wStringBuffer
	text " evolved"
	done

_IntoText::
	text_start
	line "into @"
	text_ram wcd6d
	text "!"
	done

_StoppedEvolvingText::
	text "Huh? @"
	text_ram wStringBuffer
	text_start
	line "stopped evolving!"
	prompt

_IsEvolvingText::
	text "What? @"
	text_ram wStringBuffer
	text_start
	line "is evolving!"
	done

_FellAsleepText::
	text "<TARGET>"
	line "fell asleep!"
	prompt

_AlreadyAsleepText::
	text "<TARGET>'s"
	line "already asleep!"
	prompt

_PoisonedText::
	text "<TARGET>"
	line "was poisoned!"
	prompt

_BadlyPoisonedText::
	text "<TARGET>'s"
	line "badly poisoned!"
	prompt

_BurnedText::
	text "<TARGET>"
	line "was burned!"
	prompt

_FrozenText::
	text "<TARGET>"
	line "was frozen solid!"
	prompt

_FireDefrostedText::
	text "Fire defrosted"
	line "<TARGET>!"
	prompt

_MonsStatsRoseText::
	text "<USER>'s"
	line "@"
	text_ram wStringBuffer
	text "@"
	text_end

_GreatlyRoseText::
	text "<SCROLL>greatly@"
	text_end

_RoseText::
	text " rose!"
	prompt

_MonsStatsFellText::
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer
	text "@"
	text_end

_GreatlyFellText::
	text "<SCROLL>greatly@"
	text_end

_FellText::
	text " fell!"
	prompt

_RanFromBattleText::
	text "<USER>"
	line "ran from battle!"
	prompt

_RanAwayScaredText::
	text "<TARGET>"
	line "ran away scared!"
	prompt

_WasBlownAwayText::
	text "<TARGET>"
	line "was blown away!"
	prompt

_ChargeMoveEffectText::
	text "<USER>@"
	text_end

_MadeWhirlwindText::
	text_start
	line "made a whirlwind!"
	prompt

_TookInSunlightText::
	text_start
	line "took in sunlight!"
	prompt

_LoweredItsHeadText::
	text_start
	line "lowered its head!"
	prompt

_SkyAttackGlowingText::
	text_start
	line "is glowing!"
	prompt

_FlewUpHighText::
	text_start
	line "flew up high!"
	prompt

_DugAHoleText::
	text_start
	line "dug a hole!"
	prompt

_BecameConfusedText::
	text "<TARGET>"
	line "became confused!"
	prompt

_MimicLearnedMoveText::
	text "<USER>"
	line "learned"
	cont "@"
	text_ram wcd6d
	text "!"
	prompt

_MoveWasDisabledText::
	text "<TARGET>'s"
	line "@"
	text_ram wcd6d
	text " was"
	cont "disabled!"
	prompt

_NothingHappenedText::
	text "Nothing happened!"
	prompt

_NoEffectText::
	text "No effect!"
	prompt

_ButItFailedText::
	text "But, it failed! "
	prompt

_DidntAffectText::
	text "It didn't affect"
	line "<TARGET>!"
	prompt

_IsUnaffectedText::
	text "<TARGET>"
	line "is unaffected!"
	prompt

_ParalyzedMayNotAttackText::
	text "<TARGET>'s"
	line "paralyzed! It may"
	cont "not attack!"
	prompt

_SubstituteText::
	text "It created a"
	line "Substitute!"
	prompt

_HasSubstituteText::
	text "<USER>"
	line "has a Substitute!"
	prompt

_TooWeakSubstituteText::
	text "Too weak to make"
	line "a Substitute!"
	prompt

_CoinsScatteredText::
	text "Coins scattered"
	line "everywhere!"
	prompt

_GettingPumpedText::
	text "<USER>'s"
	line "getting pumped!"
	prompt

_WasSeededText::
	text "<TARGET>"
	line "was seeded!"
	prompt

_EvadedAttackText::
	text "<TARGET>"
	line "evaded attack!"
	prompt

_HitWithRecoilText::
	text "<USER>'s"
	line "hit with recoil!"
	prompt

_ConvertedTypeText::
	text "Converted type to"
	line "<TARGET>'s!"
	prompt

_StatusChangesEliminatedText::
	text "All Status changes"
	line "are eliminated!"
	prompt

_StartedSleepingEffect::
	text "<USER>"
	line "started sleeping!"
	done

_FellAsleepBecameHealthyText::
	text "<USER>"
	line "fell asleep and"
	cont "became healthy!"
	done

_RegainedHealthText::
	text "<USER>"
	line "regained health!"
	prompt

_TransformedText::
	text "<USER>"
	line "transformed into"
	cont "@"
	text_ram wcd6d
	text "!"
	prompt

_LightScreenProtectedText::
	text "<USER>'s"
	line "protected against"
	cont "special attacks!"
	prompt

_ReflectGainedArmorText::
	text "<USER>"
	line "gained armor!"
	prompt

_ShroudedInMistText::
	text "<USER>'s"
	line "shrouded in mist!"
	prompt

_SuckedHealthText::
	text "Sucked health from"
	line "<TARGET>!"
	prompt

_DreamWasEatenText::
	text "<TARGET>'s"
	line "dream was eaten!"
	prompt

_TradeCenterText1::
	text "!"
	done

_ColosseumText1::
	text "!"
	done

INCLUDE "text/maps/reds_house_1f.asm"
INCLUDE "text/maps/blues_house.asm"
INCLUDE "text/maps/oaks_lab.asm"
INCLUDE "text/maps/viridian_pokecenter.asm"
INCLUDE "text/maps/viridian_mart.asm"
INCLUDE "text/maps/viridian_school.asm"
INCLUDE "text/maps/viridian_house.asm"
INCLUDE "text/maps/viridian_gym.asm"
INCLUDE "text/maps/museum_1f.asm"
INCLUDE "text/maps/museum_2f.asm"
INCLUDE "text/maps/pewter_gym_1.asm"


SECTION "Text 7", ROMX, BANK[TEXT_7]

INCLUDE "text/maps/pewter_gym_2.asm"
INCLUDE "text/maps/pewter_house_1.asm"
INCLUDE "text/maps/pewter_mart.asm"
INCLUDE "text/maps/pewter_house_2.asm"
INCLUDE "text/maps/pewter_pokecenter.asm"
INCLUDE "text/maps/cerulean_trashed_house.asm"
INCLUDE "text/maps/cerulean_trade_house.asm"
INCLUDE "text/maps/cerulean_pokecenter.asm"
INCLUDE "text/maps/cerulean_gym.asm"
INCLUDE "text/maps/bike_shop.asm"
INCLUDE "text/maps/cerulean_mart.asm"
INCLUDE "text/maps/cerulean_badge_house.asm"
INCLUDE "text/maps/lavender_pokecenter.asm"
INCLUDE "text/maps/pokemon_tower_1f.asm"
INCLUDE "text/maps/pokemon_tower_2f.asm"
INCLUDE "text/maps/pokemon_tower_3f.asm"
INCLUDE "text/maps/pokemon_tower_4f.asm"
INCLUDE "text/maps/pokemon_tower_5f.asm"
INCLUDE "text/maps/pokemon_tower_6f.asm"
INCLUDE "text/maps/pokemon_tower_7f.asm"
INCLUDE "text/maps/fujis_house.asm"
INCLUDE "text/maps/lavender_mart.asm"
INCLUDE "text/maps/lavender_house.asm"
INCLUDE "text/maps/name_rater.asm"
INCLUDE "text/maps/vermilion_pokecenter.asm"
INCLUDE "text/maps/fan_club.asm"
INCLUDE "text/maps/vermilion_mart.asm"
INCLUDE "text/maps/vermilion_gym_1.asm"


SECTION "Text 8", ROMX, BANK[TEXT_8]

INCLUDE "text/maps/vermilion_gym_2.asm"
INCLUDE "text/maps/vermilion_house.asm"
INCLUDE "text/maps/vermilion_dock.asm"
INCLUDE "text/maps/vermilion_fishing_house.asm"
INCLUDE "text/maps/celadon_dept_store_1f.asm"
INCLUDE "text/maps/celadon_dept_store_2f.asm"
INCLUDE "text/maps/celadon_dept_store_3f.asm"
INCLUDE "text/maps/celadon_dept_store_4f.asm"
INCLUDE "text/maps/celadon_dept_store_roof.asm"
INCLUDE "text/maps/celadon_mansion_1f.asm"
INCLUDE "text/maps/celadon_mansion_2f.asm"
INCLUDE "text/maps/celadon_mansion_3f.asm"
INCLUDE "text/maps/celadon_mansion_4f_outside.asm"
INCLUDE "text/maps/celadon_mansion_4f_inside.asm"
INCLUDE "text/maps/celadon_pokecenter.asm"
INCLUDE "text/maps/celadon_gym.asm"
INCLUDE "text/maps/celadon_game_corner.asm"
INCLUDE "text/maps/celadon_dept_store_5f.asm"
INCLUDE "text/maps/celadon_prize_room.asm"
INCLUDE "text/maps/celadon_diner.asm"
INCLUDE "text/maps/celadon_house.asm"
INCLUDE "text/maps/celadon_hotel.asm"
INCLUDE "text/maps/fuchsia_mart.asm"
INCLUDE "text/maps/fuchsia_house.asm"
INCLUDE "text/maps/fuchsia_pokecenter.asm"
INCLUDE "text/maps/wardens_house.asm"
INCLUDE "text/maps/safari_zone_entrance.asm"
INCLUDE "text/maps/fuchsia_gym_1.asm"


SECTION "Text 9", ROMX, BANK[TEXT_9]

INCLUDE "text/maps/fuchsia_gym_2.asm"
INCLUDE "text/maps/fuchsia_meeting_room.asm"
INCLUDE "text/maps/fuchsia_fishing_house.asm"
INCLUDE "text/maps/mansion_1f.asm"
INCLUDE "text/maps/cinnabar_gym.asm"
INCLUDE "text/maps/cinnabar_lab.asm"
INCLUDE "text/maps/cinnabar_lab_trade_room.asm"
INCLUDE "text/maps/cinnabar_lab_metronome_room.asm"
INCLUDE "text/maps/cinnabar_lab_fossil_room.asm"
INCLUDE "text/maps/cinnabar_pokecenter.asm"
INCLUDE "text/maps/cinnabar_mart.asm"
INCLUDE "text/maps/indigo_plateau_lobby.asm"
INCLUDE "text/maps/copycats_house_1f.asm"
INCLUDE "text/maps/copycats_house_2f.asm"
INCLUDE "text/maps/fighting_dojo.asm"
INCLUDE "text/maps/saffron_gym.asm"
INCLUDE "text/maps/saffron_house.asm"
INCLUDE "text/maps/saffron_mart.asm"
INCLUDE "text/maps/silph_co_1f.asm"
INCLUDE "text/maps/saffron_pokecenter.asm"
INCLUDE "text/maps/mr_psychics_house.asm"

_PokemartGreetingText::
	text "Hi there!"
	next "May I help you?"
	done

_PokemonFaintedText::
	text_ram wcd6d
	text_start
	line "fainted!"
	done

_PlayerBlackedOutText::
	text "<PLAYER> is out of"
	line "useable #mon!"

	para "<PLAYER> blacked"
	line "out!"
	prompt

_RepelWoreOffText::
	text "Repel's effect"
	line "wore off."
	done

_PokemartBuyingGreetingText::
	text "Take your time."
	done

_PokemartTellBuyPriceText::
	text_ram wStringBuffer
	text "?"
	line "That will be"
	cont "¥@"
	text_bcd hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text " , OK?"
	done

_PokemartBoughtItemText::
	text "Here you are!"
	line "Thank you!"
	prompt

_PokemartNotEnoughMoneyText::
	text "You don't have"
	line "enough money."
	prompt

_PokemartItemBagFullText::
	text "You can't carry"
	line "any more items."
	prompt

_PokemonSellingGreetingText::
	text "What would you"
	line "like to sell?"
	done

_PokemartTellSellPriceText::
	text "I can pay you"
	line "¥@"
	text_bcd hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "for that."
	done

_PokemartItemBagEmptyText::
	text "You don't have"
	line "anything to sell."
	prompt

_PokemartUnsellableItemText::
	text "I can't put a"
	line "price on that."
	prompt

_PokemartThankYouText::
	text "Thank you!"
	done

_PokemartAnythingElseText::
	text "Is there anything"
	line "else I can do?"
	done

_LearnedMove1Text::
	text_ram wLearnMoveMonName
	text_start
	line " learned"
	cont "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_WhichMoveToForgetText::
	text "Which move should"
	next "be forgotten?"
	prompt

_AbandonLearningText::
	text "Abandon learning"
	line "@"
	text_ram wStringBuffer
	text "?"
	done

_DidNotLearnText::
	text_ram wLearnMoveMonName
	text_start
	line "did not learn"
	cont "@"
	text_ram wStringBuffer
	text "!"
	prompt

_TryingToLearnText::
	text_ram wLearnMoveMonName
	text " is"
	line "trying to learn"
	cont "@"
	text_ram wStringBuffer
	text "!"

	para "But, @"
	text_ram wLearnMoveMonName
	text_start
	line "can't learn more"
	cont "than 4 moves!"

	para "Delete an older"
	line "move to make room"
	cont "for @"
	text_ram wStringBuffer
	text "?"
	done

_OneTwoAndText::
	text "1, 2 and...@"
	text_end

_PoofText::
	text "Poof!@"
	text_end

_ForgotAndText::
	text_start
	para "@"
	text_ram wLearnMoveMonName
	text " forgot"
	line "@"
	text_ram wcd6d
	text "!"

	para "And..."
	prompt

_HMCantDeleteText::
	text "HM techniques"
	line "can't be deleted!"
	prompt

_PokemonCenterWelcomeText::
	text "Welcome to our"
	line "#mon Center!"

	para "We heal your"
	line "#mon back to"
	cont "perfect health!"
	prompt

_ShallWeHealYourPokemonText::
	text "Shall we heal your"
	line "#mon?"
	done

_NeedYourPokemonText::
	text "OK. We'll need"
	line "your #mon."
	done

_PokemonFightingFitText::
	text "Thank you!"
	line "Your #mon are"
	cont "fighting fit!"
	prompt

_PokemonCenterFarewellText::
	text "We hope to see"
	line "you again!"
	done

_CableClubNPCAreaReservedFor2FriendsLinkedByCableText::
	text "This area is"
	line "reserved for 2"
	cont "friends who are"
	cont "linked by cable."
	done

_CableClubNPCWelcomeText::
	text "Welcome to the"
	line "Cable Club!"
	done

_CableClubNPCPleaseApplyHereHaveToSaveText::
	text "Please apply here."

	para "Before opening"
	line "the link, we have"
	cont "to save the game."
	done

_CableClubNPCPleaseWaitText::
	text "Please wait.@"

_CableClubNPCLinkClosedBecauseOfInactivityText::
	text "The link has been"
	line "closed because of"
	cont "inactivity."

	para "Please contact"
	line "your friend and"
	cont "come again!"
	done


SECTION "Text 10", ROMX, BANK[TEXT_10]

_CableClubNPCPleaseComeAgainText::
	text "Please come again!"
	done

_CableClubNPCMakingPreparationsText::
	text "We're making"
	line "preparations."
	cont "Please wait."
	done

_UsedStrengthText::
	text_ram wcd6d
	text " used"
	line "Strength.@"
	text_end

_CanMoveBouldersText::
	text_ram wcd6d
	text " can"
	line "move boulders."
	prompt

_CurrentTooFastText::
	text "The current is"
	line "much too fast!"
	prompt

_CyclingIsFunText::
	text "Cycling is fun!"
	line "Forget Surfing!"
	prompt

_FlashLightsAreaText::
	text "A blinding Flash"
	line "lights the area!"
	prompt

_WarpToLastPokemonCenterText::
	text "Warp to the last"
	line "#mon Center."
	done

_CannotUseTeleportNowText::
	text_ram wcd6d
	text " can't"
	line "use Teleport now."
	prompt

_CannotFlyHereText::
	text_ram wcd6d
	text " can't"
	line "Fly here."
	prompt

_NotHealthyEnoughText::
	text "Not healthy"
	line "enough."
	prompt

_NewBadgeRequiredText::
	text "No! A new Badge"
	line "is required."
	prompt

_CannotUseItemsHereText::
	text "You can't use items"
	line "here."
	prompt

_CannotGetOffHereText::
	text "You can't get off"
	line "here."
	prompt

_GotMonText::
	text "<PLAYER> got"
	line "@"
	text_ram wcd6d
	text "!@"
	text_end

_SetToBoxText::
	text "There's no more"
	line "room for #mon!"
	cont "@"
	text_ram wBoxMonNicks
	text " was"
	cont "sent to #mon"
	cont "Box @"
	text_ram wStringBuffer
	text " on PC!"
	done

_BoxIsFullText::
	text "There's no more"
	line "room for #mon!"

	para "The #mon Box"
	line "is full and can't"
	cont "accept any more!"

	para "Change the Box at"
	line "a #mon Center"
	cont "or by using the"
	cont "Pager!"
	done

_BoxIsFullReminderText::
	text "The #mon BOX"
	line "is now full."
	cont "It won't hold"
	cont "more #mon."
	
	para "Change the Box at"
	line "a #mon Center"
	cont "or by using the"
	cont "Pager!"
	prompt

INCLUDE "text/maps/pallet_town.asm"
INCLUDE "text/maps/viridian_city.asm"
INCLUDE "text/maps/pewter_city.asm"
INCLUDE "text/maps/cerulean_city.asm"
INCLUDE "text/maps/lavender_town.asm"
INCLUDE "text/maps/vermilion_city.asm"
INCLUDE "text/maps/celadon_city.asm"
INCLUDE "text/maps/fuchsia_city.asm"
INCLUDE "text/maps/cinnabar_island.asm"
INCLUDE "text/maps/saffron_city.asm"

_ItemUseBallText00::
	text "It dodged the"
	line "thrown Ball!"

	para "This #mon"
	line "can't be caught!"
	prompt

_ItemUseBallText01::
	text "You missed the"
	line "#mon!"
	prompt

_ItemUseBallText02::
	text "Darn! The #mon"
	line "broke free!"
	prompt

_ItemUseBallText03::
	text "Aww! It appeared"
	line "to be caught! "
	prompt

_ItemUseBallText04::
	text "Shoot! It was so"
	line "close too!"
	prompt

_ItemUseBallText05::
	text "All right!"
	line "@"
	text_ram wEnemyMonNick
	text " was"
	cont "caught!@"
	text_end

_ItemUseBallText07::
	text_ram wBoxMonNicks
	text " was"
	line "transferred to"
	cont "Bill's PC!"
	prompt

_ItemUseBallText08::
	text_ram wBoxMonNicks
	text " was"
	line "transferred to"
	cont "someone's PC!"
	prompt

_ItemUseBallText06::
	text "New #dex data"
	line "will be added for"
	cont "@"
	text_ram wEnemyMonNick
	text_end

_SurfingGotOnText::
	text "<PLAYER> got on"
	line "@"
	text_ram wcd6d
	text "!"
	prompt

_AlreadySurfingText::
	text "You're already"
	line "surfing."
	prompt

_VitaminStatRoseText::
	text_ram wStringBuffer
	text "'s"
	line "@"
	text_ram wcd6d
	text_start
	cont "rose."
	prompt

_VitaminNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrewBaitText::
	text "<PLAYER> threw"
	line "some Bait."
	done

_ThrewRockText::
	text "<PLAYER> threw a"
	line "Rock."
	done

_PlayedFluteNoEffectText::
	text "Played the #"
	line "Flute."

	para "Now, that's a"
	line "catchy tune!"
	prompt

_FluteWokeUpText::
	text "All sleeping"
	line "#mon woke up."
	prompt

_PlayedFluteHadEffectText::
	text "<PLAYER> played the"
	line "# Flute.@"

_CoinCaseNumCoinsText::
	text "Coins"
	line "@"
	text_bcd wPlayerCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " "
	prompt

_ItemfinderFoundItemText::
	text "Yes! Itemfinder"
	line "indicates there's"
	cont "an item nearby."
	prompt

_ItemfinderFoundNothingText::
	text "Nope! Itemfinder"
	line "isn't responding."
	prompt

_RaisePPWhichTechniqueText::
	text "Raise PP of which"
	line "technique?"
	done

_RestorePPWhichTechniqueText::
	text "Restore PP of"
	line "which technique?"
	done

_PPMaxedOutText::
	text_ram wStringBuffer
	text "'s PP"
	line "is maxed out."
	prompt

_PPIncreasedText::
	text_ram wStringBuffer
	text "'s PP"
	line "increased."
	prompt

_PPRestoredText::
	text "PP was restored."
	prompt

_BootedUpTMText::
	text "Booted up a TM!"
	prompt

_BootedUpHMText::
	text "Booted up an HM!"
	prompt

_TeachMachineMoveText::
	text "It contained"
	line "@"
	text_ram wStringBuffer

	text "!"

	para "Teach @"
	text_ram wStringBuffer
	text_start
	cont "to a #mon?"
	done

_MonCannotLearnMachineMoveText::
	text_ram wStringBuffer
	text " is not"
	line "compatible with"
	cont "@"
	text_ram wcd6d
	text "."

	para "It can't learn"
	line "@"
	text_ram wStringBuffer
	text "."
	prompt

_ItemUseNotTimeText::
	text "Oak: <PLAYER>!"
	line "This isn't the"
	cont "time to use that! "
	prompt

_ItemUseNotAllowedText::
	text "Not allowed to"
	line "be used!"
	prompt

_ItemUseInBattleText::
	text "This can only"
	line "be used during"
	cont "a #mon battle."
	prompt

_ItemUseNotYoursToUseText::
	text "This isn't yours"
	line "to use!"
	prompt

_ItemUseNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrowBallAtTrainerMonText1::
	text "The trainer"
	line "blocked the Ball!"
	prompt

_ThrowBallAtTrainerMonText2::
	text "Don't be a thief!"
	prompt

_ThrowBallAtMewtwoText::
	text "You hear a power-"
	line "ful voice in your"
	cont "mind:"

	para "I've taken on your"
	line "challenge, human."

	para "But fight me fair!"
	prompt

_NoCyclingAllowedHereText::
	text "No cycling"
	next "allowed here."
	prompt

_NoSurfingHereText::
	text "No Surfing on"
	line "@"
	text_ram wcd6d
	text " here!"
	prompt

_BoxFullCannotThrowBallText::
	text "The #mon Box"
	line "is full! Can't"
	cont "use that item!"
	prompt


SECTION "Text 11", ROMX, BANK[TEXT_11]

_ItemUseText001::
	text "<PLAYER> used@"
	text_end

_ItemUseText002::
	text_ram wStringBuffer
	text "!"
	done

_GotOnBicycleText1::
	text "<PLAYER> got on the@"
	text_end

_GotOnBicycleText2::
	text_ram wStringBuffer
	text "!"
	prompt

_GotOffBicycleText1::
	text "<PLAYER> got off@"
	text_end

_GotOffBicycleText2::
	text "the @"
	text_ram wStringBuffer
	text "."
	prompt

_ThrewAwayItemText::
	text "Threw away"
	line "@"
	text_ram wcd6d
	text "!"
	prompt

_IsItOKToTossItemText::
	text "Is it OK to toss"
	line "@"
	text_ram wStringBuffer
	text "?"
	prompt

_TooImportantToTossText::
	text "That's too impor-"
	line "tant to toss!"
	prompt

_AlreadyKnowsText::
	text_ram wcd6d
	text_start
	line "knows"
	cont "@"
	text_ram wStringBuffer
	text "!"
	prompt

_ConnectCableText::
	text "Okay, connect the"
	line "cable like so!"
	prompt

_TradedForText::
	text "<PLAYER> traded"
	line "@"
	text_ram wInGameTradeGiveMonName
	text " for"
	cont "@"
	text_ram wInGameTradeReceiveMonName
	text "!@"
	text_end

_WannaTrade1Text::
	text "I'm looking for"
	line "@"
	text_ram wInGameTradeGiveMonName
	text_start

	para "trade one for"
	line "@"
	text_ram wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade1Text::
	text "Awww!"
	line "Oh well..."
	done

_WrongMon1Text::
	text "What? That's not"
	line "@"
	text_ram wInGameTradeGiveMonName
	text "!"

	para "If you get one,"
	line "come back here!"
	done

_Thanks1Text::
	text "Hey thanks!"
	done

_AfterTrade1Text::
	text "Isn't my old"
	line "@"
	text_ram wInGameTradeReceiveMonName
	text " great?"
	done

_WannaTrade2Text::
	text "Hello there! Do"
	line "you want to trade"

	para "your @"
	text_ram wInGameTradeGiveMonName
	text_start
	line "for @"
	text_ram wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade2Text::
	text "Well, if you"
	line "don't want to..."
	done

_WrongMon2Text::
	text "Hmmm? This isn't"
	line "@"
	text_ram wInGameTradeGiveMonName
	text "."

	para "Think of me when"
	line "you get one."
	done

_Thanks2Text::
	text "Thanks!"
	done

_AfterTrade2Text::
	text "The @"
	text_ram wInGameTradeGiveMonName
	text " you"
	line "traded to me"
	cont "is learning fast!"	;joenote - fixed nonsense about evolving
	done

_WannaTrade3Text::
	text "Hi! Do you have"
	line "@"
	text_ram wInGameTradeGiveMonName
	text "?"

	para "Want to trade it"
	line "for @"
	text_ram wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade3Text::
	text "That's too bad."
	done

_WrongMon3Text::
	text "...This is no"
	line "@"
	text_ram wInGameTradeGiveMonName
	text "."

	para "If you get one,"
	line "trade it with me!"
	done

_Thanks3Text::
	text "Thanks pal!"
	done

_AfterTrade3Text::
	text "How is my old"
	line "@"
	text_ram wInGameTradeReceiveMonName
	text "?"

	para "My @"
	text_ram wInGameTradeGiveMonName
	text " is"
	line "doing great!"
	done

_NothingToCutText::
	text "There isn't"
	line "anything to Cut!"
	prompt

_UsedCutText::
	text_ram wcd6d
	text " hacked"
	line "away with Cut!"
	prompt

_ChanseyText::
	text "Chansey:"
	line "Chaan! Sii!"
	prompt

;joenote - for field move slot
_LearnTempFieldMoveText::
	text "Learn this as a"
	line "temporary Field"
	cont "Move?"
	done
_LearnTempFieldMoveTextDenied::
	text "A temporary Field"
	line "Move is already"
	cont "known!"
	
	para "Put this #mon"
	line "in a PC Box to"
	cont "erase it."
	prompt

_RomHackVersionText::
	text "This Save is from"
	line "a different rev"
	cont "of this game."
	
	para "Warp to Pallet"
	line "Town for safety?"
	done

_RematchTrainerText::
	text "Offer a rematch?"
	done

_PostCreditText1::
	text "After your"
	line "victory, you"
	cont "decide to go"
	cont "on a well-earned"
	cont "vacation."

	para "You choose to"
	line "spend them in"
	cont "the Sevii Islands."

	para "The beauty and"
	line "diversity of this"
	cont "archipelago is"
	cont "such that you"
	cont "stay much longer"
	cont "than expected."

	para "It is only"
	line "several months"
	cont "later that you"
	cont "finally head"
	cont "back to Kanto."
	prompt

_PostCreditText2::
	text "Back aboard the"
	line "S.S.Anne and"
	cont "saling between"
	cont "Vermilion City and"
	cont "Pallet Town, you"
	cont "feel that the"
	cont "mood has changed."

	para "According to what"
	line "you understand"
	cont "from snippet of"
	cont "conversations,"
	cont "the story of the"
	cont "two young rivals"
	cont "from Pallet Town"
	cont "becoming League"
	cont "Champion sparked"
	cont "a new wave of"
	cont "excitement in"
	cont "the region."

	para "Now every trainer"
	line "wants to try"
	cont "their luck!"
	prompt

_PostCreditText3::
	text "As you arrive back"
	line "home, your mother"
	cont "hands you a"
	cont "bundle of letters"
	cont "including some"
	cont "important-looking"
	cont "ones:"

	para "Hello, <PLAYER>!"
	line "Congratulations,"
	cont "Remember to"
	cont "pick up your"
	cont "Certificate at"
	cont "Celadon Mansion!"

	para "Signed: G.F."
	prompt

_PostCreditText4::
	text "Champion!"
	line "In response to"
	cont "the new rush of"
	cont "challengers we,"
	cont "Gym and League"
	cont "Leaders, have"
	cont "rethought our"
	cont "teams and"
	cont "strategies."

	para "We officially"
	line "challenge you!"
	prompt

_PostCreditText5::
	text "You see various"
	line "flyers but you"
	cont "only remember"
	cont "their titles:"

	para "Need money? The"
	line "Game Corner is"
	cont "running low on"
	cont "prizes and is"
	cont "buying your"
	cont "#mon for a"
	cont "hefty price!"
	cont "..."

	para "Celadon Dept."
	line "Store"
	cont "The Rare Items"
	cont "shop is now open!"
	cont "..."

	para "Safari Zone"
	line "Discover the new"
	cont "Primal Safari!"
	cont "..."
	prompt

_PostCreditText6::
	text "In the face of all"
	line "this paperwork,"
	cont "you decide that"
	cont "it's time to go!"
	prompt

SECTION "Pokedex Text", ROMX, BANK[POKEDEX_TEXT]

INCLUDE "text/pokedex.asm"

SECTION "Move Names", ROMX, BANK[MOVE_NAMES]

INCLUDE "text/move_names.asm"

SECTION "Item Descriptions", ROMX

INCLUDE "text/item_descriptions.asm"

SECTION "Movedex Text", ROMX

INCLUDE "data/moves/movedex_text.asm"
