CeladonSchoolScript:
	jp EnableAutoTextBoxDrawing

CeladonSchoolTextPointers:
	dw CeladonSchoolText_MoveDeleter
	dw CeladonSchoolText_MoveRelearner
	dw CeladonSchoolText_PogKid

CeladonSchoolText_MoveDeleter:
	TX_FAR MoveDeleterText1
	db "@"

CeladonSchoolText_MoveRelearner:
	TX_FAR MoveRelearnerText1
	db "@"

CeladonSchoolText_PogKid:
	TX_ASM
	ld hl, .celadonSchoolText_PogKid
	call PrintText
	jp TextScriptEnd

.celadonSchoolText_PogKid
	text "#mon? So what?"
	line "Don't care about"
	cont "#mon!"

	para "Me, I got a"
	line "Pog collection!"
	done
	db "@"
