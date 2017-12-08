TITLE NO INTERNET CONNECTION! GAME (SIMPLIFIED .EXE FORMAT)
.MODEL LARGE
;-------------------------------------
.STACK 64
;-------------------------------------
.DATA


;---title screen
LINE1 DB " ", 10, 13
LINE2 DB " ", 10, 13
LINE3 DB " ", 10, 13
LINE4 DB " ", 10, 13
LINE5 DB "	   ____ ____ _________ ____ ____ ____ ____ ____ ____ ____ ____ ", 10, 13
LINE6 DB "	  ||N |||O |||       |||I |||N |||T |||E |||R |||N |||E |||T ||", 10, 13
LINE7 DB "	  ||__|||__|||_______|||__|||__|||__|||__|||__|||__|||__|||__||", 10, 13
LINE8 DB "	  |____|____|_________|____|____|____|____|____|____|____|/__\|", 10, 13
LINE9 DB "	  ||C |||O |||N |||N |||E |||C |||T |||I |||O |||N |||! ||     ", 10, 13
LINE10 DB "	  ||__|||__|||__|||__|||__|||__|||__|||__|||__|||__|||__||     ", 10, 13
LINE11 DB "	  |/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|    $", 10, 13

ENTER1 DB " ", 10, 13
ENTER2 DB " ", 10, 13
ENTER3 DB " ", 10, 13
ENTER4 DB " ", 10, 13
ENTER5 DB " ", 10, 13
ENTER6 DB " ", 10, 13
ENTER7 DB "                           PRESS ENTER TO CONTINUE", 10, 13
ENTER8 DB "                              PRESS ESC TO QUIT $", 10, 13

;---how to play screen
HOW1 DB "      ____ ____ ____ _________ ____ ____ _________ ____ ____ ____ ____ ____ ", 10, 13
HOW2 DB "     ||H |||O |||W |||       |||T |||O |||       |||P |||L |||A |||Y |||? ||", 10, 13
HOW3 DB "     ||__|||__|||__|||_______|||__|||__|||_______|||__|||__|||__|||__|||__||", 10, 13
HOW4 DB "     |/__\|/__\|/__\|/_______\|/__\|/__\|/_______\|/__\|/__\|/__\|/__\|/__\|", 10, 13
HOW5 DB " ", 10, 13
HOW6 DB "           Hell Week is coming and you need to avoid any distractions", 10, 13
HOW7 DB "                           for you to pass CMSC 131!", 10, 13
HOW8 DB " ", 10, 13
HOW9 DB " ", 10, 13
HOW10 DB "-> Use the SPACE BAR to jump and get away with FACEBOOK (f), TWITTER (t),", 10, 13
HOW11 DB "    INSTAGRAM (i), ANIME (a), K-DRAMA (k), and even your fantasies about", 10, 13
HOW12 DB "     your CRUSH (c)!", 10, 13
HOW13 DB " ", 10, 13
HOW14 DB " ", 10, 13
HOW15 DB "-> Get some SLEEP (S), and some LOVE ($"
HOW16 DB ") and you'll get some points!", 10, 13
HOW17 DB " ", 10, 13
HOW18 DB " ", 10, 13
HOW19 DB "       You are the SMILEY ICON ($", 10, 13
HOW20 DB ")", 10, 13
HOW21 DB "          So be sure to finish this sem with a smile!", 10, 13
HOW22 DB " ", 10, 13
HOW23 DB " ", 10, 13
HOW24 DB " ", 10, 13
HOW25 DB "                            D O N ' T   D I E  $", 10, 13

;---game over screen
GAMEOVER1 DB "                                  				         ", 10, 13
GAMEOVER2 DB "														     ", 10, 13
GAMEOVER3 DB "						  								     ", 10, 13
GAMEOVER4 DB "	      ____ ____ ____ ____ _________ ____ ____ ____ ____  ", 10, 13
GAMEOVER5 DB "	     ||G |||A |||M |||E |||       |||O |||V |||E |||R || ", 10, 13
GAMEOVER6 DB "	     ||__|||__|||__|||__|||_______|||__|||__|||__|||__|| ", 10, 13
GAMEOVER7 DB "	     |/__\|/__\|/__\|/__\|/_______\|/__\|/__\|/__\|/__\|$", 10, 13

TITLE_SCREEN_INPUT DB ?, "$"
HOW_TO_INPUT DB ?, "$"

ROW DB ?
COL DB ?

;MESSAGE DB "NASULOD!$"
;------------------------------------------------------------------------------------------------
.CODE

MAIN PROC FAR
	MOV AX, @DATA
	MOV DS, AX
	MOV ES, AX

	;---sets to full screen
	CALL CLEAR_SCREEN
	MOV ROW, 2
	MOV COL, 2
	MOV DH, ROW
	MOV DL, COL
	
	CALL SET_CURSOR        ;---initialize the front page of game
	CALL SET_TITLE1		   ;---display game title screen
	CALL SET_TITLE2

	CALL MAIN_SCREEN

	CALL SHOW_HOW_TO

	CALL WAIT_ENTER

	CALL GAME_START

	EXIT:
		MOV AX, 4C00H
		INT 21H
MAIN ENDP
;--------------------------------------
CLEAR_SCREEN PROC  NEAR
      
      MOV   AX, 0600H 	;full screen
      MOV   BH, 0EH   	;black background (0), light yellow foreground (E)
      MOV   CX, 0000H 	;upper left row:column (0:0)
      MOV   DX, 184FH 	;lower right row:column (24:79)
      INT   10H

      RET
CLEAR_SCREEN ENDP
;--------------------------------------
SET_CURSOR PROC  NEAR

      MOV   AH, 02H
      MOV   BH, 00
      INT   10H

      RET
SET_CURSOR ENDP
;--------------------------------------
SET_TITLE1 PROC NEAR

	MOV DX, OFFSET LINE1
	MOV AH, 09
	INT 21H

	RET
SET_TITLE1 ENDP
;--------------------------------------
SET_TITLE2 PROC NEAR
	
	MOV DX, OFFSET ENTER1
	MOV AH, 09
	INT 21H

	MOV AH, 09H
	MOV AL, '?'
	MOV BH, 00H
	MOV BL, 0F0H
	MOV CX, 1
	INT 10H

	RET
SET_TITLE2 ENDP
;-------------------------------------------
MAIN_SCREEN PROC NEAR

	LISTEN:
		MOV DH, 25
		MOV DL, 05
		CALL SET_CURSOR ;---sets the cursor to the lower part of the screen 

		CALL GET_KEY

		;---check if user quits or starts the game
		MOV TITLE_SCREEN_INPUT, AL
		CMP TITLE_SCREEN_INPUT, 01BH
		JE EXIT1   						;---end the game
		CMP TITLE_SCREEN_INPUT, 0DH
		JE HOW_TO  						;---show how to play game

		JMP LISTEN

		HOW_TO:
			CALL CLEAR_SCREEN
			MOV ROW, 0
			MOV COL, 0
			MOV DH, ROW
			MOV DL, COL
			CALL SET_CURSOR

			RET

		EXIT1:
			CALL CLEAR_SCREEN

			MOV AX, 4C00H
			INT 21H
MAIN_SCREEN ENDP
;-------------------------------------------
GET_KEY PROC NEAR 

	;---checks if a key is pressed
	MOV AH, 00H 
	INT 16H
	JZ EXIT ;---exit in main proc
	MOV AH, 01H
	INT 16H

	RET
GET_KEY ENDP
;-------------------------------------------
SHOW_HOW_TO PROC NEAR

	;---print howtoplay
	MOV DX, OFFSET HOW1
	MOV AH, 09
	INT 21H

	MOV AH, 6
	MOV DL, 3 ;--- 3 for heart icon
	INT 21H

	;---continue printing
	MOV DX, OFFSET HOW16
	MOV AH, 09
	INT 21H

	MOV AH, 6
	MOV DL, 1 ;--- 1 for smiley icon
	INT 21H

	;---continue printing
	MOV DX, OFFSET HOW20
	MOV AH, 09
	INT 21H

	;---print blinking !
	MOV AH, 09H
	MOV AL, '!'
	MOV BH, 00H
	MOV BL, 0F0H
	MOV CX, 1
	INT 10H

	;---set cursor at the bottom
	MOV ROW, 25
	MOV COL, 05
	MOV DH, ROW
	MOV DL, COL
	CALL SET_CURSOR
	
	RET
SHOW_HOW_TO ENDP
;-------------------------------------------
WAIT_ENTER PROC NEAR
	
	WAIT_ENTER_AGAIN:
		CALL GET_KEY
		MOV HOW_TO_INPUT, AL
		CMP HOW_TO_INPUT, 0DH
		JE LETS_START

		LOOP WAIT_ENTER_AGAIN

	LETS_START:
		RET
WAIT_ENTER ENDP
;-------------------------------------------
GAME_START PROC NEAR

	CALL CLEAR_SCREEN
	MOV ROW, 0
	MOV COL, 0
	MOV DH, ROW
	MOV DL, COL
	CALL SET_CURSOR

	MOV DX, OFFSET GAMEOVER1
	MOV AH, 09
	INT 21H

	RET
GAME_START ENDP
;-------------------------------------------

;-------------------------------------------

;-------------------------------------------

;-------------------------------------------

;-------------------------------------------  
END MAIN




;----------------------------------UPDATE: the input checking in how to play screen kay naa pay bug... FIX IT SHANG!