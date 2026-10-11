CeruleanPrinterScript:
	jp EnableAutoTextBoxDrawing

CeruleanPrinterTextPointers:
	dw CeruleanPrinterText
	dw CeruleanPrinterText_Printer
	dw CeruleanPrinterSign_Poster
	dw CeruleanPrinterSign_Sheves

CeruleanPrinterText:
	TX_FAR _CeruleanPrinterText
	db "@"

CeruleanPrinterText_Printer:
	TX_ASM
	;display the PC-style power-on text, then open the printer menu
	ld hl, .turnedOnPrinterText
	call PrintText
	; open the GB Printer menu, then redraw the map view
	xor a
	ld [wUpdateSpritesEnabled], a
	callba OpenPrinterMenu
	callba ReloadMapAfterPrinter
	ld a, $1
	ld [wUpdateSpritesEnabled], a
	;the menu is the whole interaction: close the dialogue box right
	;away instead of waiting for one more button press (mirrors the
	;NON branch above)
	ld a, 1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jp TextScriptEnd

;shown above the printer menu, like the "turned on the pc" texts
.turnedOnPrinterText
	text "<PLAYER> turned on"
	line "the printer."
	prompt
	db "@"

CeruleanPrinterSign_Poster:
	TX_FAR _CeruleanPrinterSign_Poster
	db "@"

CeruleanPrinterSign_Sheves:
	TX_FAR _CeruleanPrinterSign_Sheves
	db "@"
