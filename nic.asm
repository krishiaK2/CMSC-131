TITLE NO INTERNET CONNECTION! GAME (SIMPLIFIED .EXE FORMAT)
.MODEL LARGE
;-------------------------------------
.STACK 128
;-------------------------------------
.DATA

;----------------------------------------------------------------------------------------------------title screen
TITLE_SCREEN_INPUT DB ?, "$"
HOW_TO_INPUT DB 	  ?, "$"

K_ROW DB ?
K_COL DB ?

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

;----------------------------------------------------------------------------------------------------how to play screen
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

;-----------------------------------------------------------------------------------------game over screen
GAMEOVER1 DB "                                  				         ", 10, 13
GAMEOVER2 DB "														     ", 10, 13
GAMEOVER3 DB "						  								     ", 10, 13
GAMEOVER4 DB "	      ____ ____ ____ ____ _________ ____ ____ ____ ____  ", 10, 13
GAMEOVER5 DB "	     ||G |||A |||M |||E |||       |||O |||V |||E |||R || ", 10, 13
GAMEOVER6 DB "	     ||__|||__|||__|||__|||_______|||__|||__|||__|||__|| ", 10, 13
GAMEOVER7 DB "	     |/__\|/__\|/__\|/__\|/_______\|/__\|/__\|/__\|/__\|$", 10, 13

;-------------------------------------------------------------------------------------------score handling datas
ERROR1_STR_WRITE DB 'Error in creating file$'
ERROR2_STR_WRITE DB 'Error writing in file$'
ERROR3_STR_WRITE DB 'Record not written properly$'

ERROR1_STR_READ DB 'Error in opening file.$'
ERROR2_STR_READ DB 'Error reading from file.$'
ERROR3_STR_READ DB 'No record read from file.$'

YOUR_SCORE_DISPLAY1 DB " ", 10, 13
YOUR_SCORE_DISPLAY2 DB " ", 10, 13
YOUR_SCORE_DISPLAY3 DB " ", 10, 13
YOUR_SCORE_DISPLAY4 DB "               YOUR SCORE: $"

HIGHEST_SCORE_DISPLAY1 DB " ", 10, 13
HIGHEST_SCORE_DISPLAY2 DB " ", 10, 13
HIGHEST_SCORE_DISPLAY3 DB 10, 13, "            HIGHEST SCORE: $"

CONGRATULATIONS1 DB " ", 10, 13
CONGRATULATIONS2 DB " ", 10, 13
CONGRATULATIONS3 DB " ", 10, 13
CONGRATULATIONS4 DB "     		CONGRATULATIONS YOU BEAT THE HIGHEST RECORD $"

ENTER_NAME1 DB " ", 10, 13
ENTER_NAME2 DB " ", 10, 13
ENTER_NAME3 DB " ", 10, 13
ENTER_NAME4 DB " ", 10, 13
ENTER_NAME5 DB "     		Please Enter Your Name: $"

;------------------------------------------------------------writing files data
NAME_SIZE DW 50
NAME_HIGHEST_SCORE DB 51 DUP("$")

SCORE_FILE DB 'NIC_SCORE.txt', 00H
NAME_FILE DB 'NIC_NAME.txt', 00H

FILEHANDLE_SCORE_WRITE DW ?
FILEHANDLE_NAME_WRITE DW ?

;---------------------------------------------------------------reading files data
FILEHANDLE_NAME_READ DW ?

STORED_NAME DB 51 DUP('$')

;------------------------------entered loop message
;DEBUG_MESSAGE DB "NASULOD!$"
;------------------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------
;-------------------------------------JEAN DATA--------------------------------------------------
GROUND1 DB "...............................................................................$",10,13 ;77
GROUND2 DB 10,13,"_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_ -_$"
EXIT_INPUT DB ?
J_ROW DB ?
J_COL DB ?
COUNT DB ?
BIDA_J_ROW DB ?
BIDA_J_COL DB ?
FLAG DB ?
GROUND_J_COL DB ?
GROUND_J_ROW DB ?
SCORE DB ?, "$"
J_COLON DB " : $"
COUNT_FLAG DB ?
SCORE_LABEL DB "score: $"

PREV_SCORE_LABEL DB " score: $"
PREV_SCORE DB ?, "$"

PREV_SCORE_LEN DW ?
VAL DW ?
SCORE_IN_DEC DB "$"
SCORE_SIZE dw 4
WINNER_FLAG db ?
FILEHANDLE_SCORE_READ DW ?
CONVERT_COUNTER DW ?
SUM DW ? ,"$"
ONED DB 10 ;---one digit multiply
TWOD DB 100 ;----2 digit multiply
COUNTER DW ?
;------------------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------
.CODE

MAIN PROC FAR
	MOV AX, @DATA
	MOV DS, AX
	MOV ES, AX

	;---sets to full screen
	CALL CLEAR_SCREEN
	MOV K_ROW, 2
	MOV K_COL, 2
	MOV DH, K_ROW
	MOV DL, K_COL
	
	CALL SET_CURSOR        ;---initialize the front page of game
	CALL SET_TITLE1		   ;---display game title screen
	CALL SET_TITLE2

	CALL MAIN_SCREEN

	CALL SHOW_HOW_TO_PLAY

	CALL WAIT_ENTER

	CALL GAME_START

	CALL READ_PREV_SCORE ;----------TODO: read file from NIC_SCORE.txt and compare the stored integer value to the current integer score.
	CALL COMPARE_SCORES

	EXIT:
		MOV DL, 0
    	MOV DH, 24
    	CALL SET_CURSOR
    	
		MOV AX, 4C00H
		INT 21H
MAIN ENDP
;-------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------
READ_PREV_SCORE PROC NEAR
	;-----read file and store its value to PREV_SCORE 
	MOV AH, 3DH           ;request open file
	MOV AL, 00            ;read only; 01 (write only); 10 (read/write)
	LEA DX, SCORE_FILE
	INT 21H
	MOV FILEHANDLE_SCORE_READ, AX
	MOV AH, 3FH           			;request read record
	MOV BX, FILEHANDLE_SCORE_READ    ;file handle
	MOV CX, 50          			;record length
	LEA DX, PREV_SCORE	    		;address of input area
	INT 21H
	CMP AX, 00            			;zero bytes read?
	MOV PREV_SCORE_LEN, AX
	MOV AH, 3EH           		   ;request close file
	MOV BX, FILEHANDLE_SCORE_READ    ;file handle
	INT 21H
	RET 
READ_PREV_SCORE ENDP
;-------------------------------------
COMPARE_SCORES PROC NEAR
	CALL GETSIZE
	CLD               			  ;clear direction flag (left to right)
  	MOV CX, COUNTER        ;initializes CX (counter) to 16 bytes
  	LEA SI, PREV_SCORE  		  ;initialize receiving address
	MOV CONVERT_COUNTER, 1
	MOV SUM, 0000
	CONVERT_TO_DEC:
		XOR AX, AX
	    MOV AL, [SI]
	    SUB AL, '0'
	    ADC AH, 0 				;--get rid of unneccesary values in ah
	    MOV AH, 00
	    MUL CONVERT_COUNTER
	    ADD SUM, AX
	    INC SI
	    MOV AX, CONVERT_COUNTER
	    MUL ONED
	    MOV CONVERT_COUNTER, AX
	    MOV AX, 0000
	LOOP CONVERT_TO_DEC

	PROCEED_TO_COMPARE:
		MOV AH, 00
		MOV AL, SCORE
		CMP AX, SUM
		JLE END_NORMAL
		CALL GAME_OVER_NEW_HIGHEST 
		JMP RET1
	END_NORMAL:
		CALL GAME_OVER_NORMAL
	RET1:
		RET 
COMPARE_SCORES ENDP
;-------------------------------------
CLEAR_SCREEN PROC  NEAR
      
      MOV   AX, 0600H 	;full screen
      MOV   BH, 0EH   	;black background (0), light yellow foreground (E)
      MOV   CX, 0000H 	;upper left K_ROW:K_COLumn (0:0)
      MOV   DX, 184FH 	;lower right K_ROW:K_COLumn (24:79)
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

		JMP LISTEN 	;---checks whenever a key is pressed

		HOW_TO:
			CALL CLEAR_SCREEN
			MOV K_ROW, 0
			MOV K_COL, 0
			MOV DH, K_ROW
			MOV DL, K_COL
			CALL SET_CURSOR

			RET

		EXIT1:
			CALL CLEAR_SCREEN

			MOV AX, 4C00H
			INT 21H
MAIN_SCREEN ENDP
;-------------------------------------------
GET_KEY PROC NEAR 

	MOV AH, 00H 
	INT 16H

	MOV AH, 01H
	INT 16H

	RET
GET_KEY ENDP
;-------------------------------------------
SHOW_HOW_TO_PLAY PROC NEAR

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
	MOV K_ROW, 25
	MOV K_COL, 05
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR
	
	RET
SHOW_HOW_TO_PLAY ENDP
;-------------------------------------------
WAIT_ENTER PROC NEAR

	WAIT_ENTER_AGAIN:
		MOV DH, 25
		MOV DL, 05
		CALL SET_CURSOR 

		CALL GET_KEY

		MOV HOW_TO_INPUT, AL
		CMP HOW_TO_INPUT, 01BH
		JE EXIT2   						;---end the game
		CMP HOW_TO_INPUT, 0DH
		JE LETS_START  					;---START THE GAME!

		JMP WAIT_ENTER_AGAIN

	LETS_START:
		CALL CLEAR_SCREEN
		MOV K_ROW, 0
		MOV K_COL, 0
		MOV DH, K_ROW
		MOV DL, K_COL
		CALL SET_CURSOR

		RET

	EXIT2:
		CALL CLEAR_SCREEN

		MOV AX, 4C00H
		INT 21H
WAIT_ENTER ENDP
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
GAME_OVER_NORMAL PROC NEAR

	CALL CLEAR_SCREEN

	MOV K_ROW, 00
	MOV K_COL, 00
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR

	CALL DISPLAY_LABELS1_GN
	CALL READ_PREV_NAME
	CALL DISPLAY_LABELS2_GN

	lea dx, score
	mov ah, 09
	int 21h
	
	MOV K_ROW, 26
	MOV K_COL, 00
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR

	RET
GAME_OVER_NORMAL ENDP
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
GETSIZE PROC NEAR
  MOV COUNTER,0
  XOR SI,SI
COPY10:
  CMP PREV_SCORE[SI],'$'
  JE END10
  INC COUNTER
  INC SI
  JMP COPY10
END10:
  MOV SUM[SI],'$'
  
RET
GETSIZE ENDP
;-------------------------------------------------------------------------------------------------------------------------------------------------
DISPLAY_LABELS1_GN PROC NEAR
	MOV DX, OFFSET GAMEOVER1
	MOV AH, 09
	INT 21H

	MOV DX, OFFSET YOUR_SCORE_DISPLAY1
	MOV AH, 09
	INT 21H

	XOR AX, AX
	MOV AL, SCORE
	ADC AH, 0
	MOV VAL, AX 
	MOV AX, VAL 
	CALL INT_TO_STR
	MOV DX, OFFSET SCORE_IN_DEC
	MOV AH, 09
	INT 21H

	MOV DX, OFFSET HIGHEST_SCORE_DISPLAY1
	MOV AH, 09
	INT 21H
RET
DISPLAY_LABELS1_GN ENDP
;---------------------------------------------
DISPLAY_LABELS2_GN PROC NEAR

	MOV K_ROW, 15
	MOV K_COL, 28
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR

	MOV DX, OFFSET STORED_NAME ;--------------------storage variable for the defending highest score read from NIC_SCORE.txt
	MOV AH, 09
	INT 21H

	MOV K_ROW, 16
	MOV K_COL, 27
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR

	MOV DX, OFFSET PREV_SCORE_LABEL
	MOV AH, 09
	INT 21H

	MOV DX, OFFSET PREV_SCORE
	MOV AH, 09
	INT 21H
	RET 

	MOV K_ROW, 16
	MOV K_COL, 40
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR

	;---print blinking !
	MOV AH, 09H
	MOV AL, '!'
	MOV BH, 00H
	MOV BL, 0F0H
	MOV CX, 1
	INT 10H

	MOV K_ROW, 40
	MOV K_COL, 00
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR

	;MOV DX, OFFSET PREV_SCORE_LEN
	;MOV AH, 09
	;INT 21H

	RET
DISPLAY_LABELS2_GN ENDP
;---------------------------------------------
READ_PREV_NAME PROC NEAR
	MOV AH, 3DH           ;request open file
	MOV AL, 00            ;read only; 01 (write only); 10 (read/write)
	LEA DX, NAME_FILE
	INT 21H
	MOV FILEHANDLE_NAME_READ, AX

	MOV AH, 3FH           			;request read record
	MOV BX, FILEHANDLE_NAME_READ    ;file handle
	MOV CX, 50          			;record length
	LEA DX, STORED_NAME	    		;address of input area
	INT 21H
	CMP AX, 00            			;zero bytes read?

	MOV AH, 3EH           		   ;request close file
	MOV BX, FILEHANDLE_NAME_READ    ;file handle
	INT 21H
RET 
READ_PREV_NAME ENDP
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
GAME_OVER_NEW_HIGHEST PROC NEAR

	CALL DISPLAY_LABELS1_GH
	CALL GET_HIGHEST_NAME
	CALL WRITE_HIGHEST_SCORE_NAME	;----write highest score name to a file

	CALL WRITE_HIGHEST_SCORE    ;---create file to save score int as string
	CALL CLEAR_SCREEN

	MOV K_ROW, 00
	MOV K_COL, 00
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR

	CALL DISPLAY_LABELS2_GH	

	MOV K_ROW, 26
	MOV K_COL, 00
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR

	RET
GAME_OVER_NEW_HIGHEST ENDP
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------------------------------------------------------
DISPLAY_LABELS1_GH PROC NEAR

	CALL CLEAR_SCREEN

	MOV K_ROW, 00
	MOV K_COL, 00
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR

	MOV DX, OFFSET CONGRATULATIONS1
	MOV AH, 09
	INT 21H

	;---print blinking !
	MOV AH, 09H
	MOV AL, '!'
	MOV BH, 00H
	MOV BL, 0F0H
	MOV CX, 4
	INT 10H

	MOV DX, OFFSET ENTER_NAME1
	MOV AH, 09
	INT 21H

RET 
DISPLAY_LABELS1_GH ENDP
;-------------------------------------------
GET_HIGHEST_NAME PROC NEAR
;---get string name input and display it
	MOV AH, 3FH
	MOV BX, 00
	MOV CX, 30
	LEA DX, NAME_HIGHEST_SCORE
	INT 21H

	MOV NAME_SIZE, AX ;---store length of name in NAME_SIZE
RET 
GET_HIGHEST_NAME ENDP
;-------------------------------------------
WRITE_HIGHEST_SCORE_NAME PROC NEAR
	MOV AH, 3CH                 ;request create file
	MOV CX, 00                  ;normal attribute
	LEA DX, NAME_FILE  			;load path and file name
	INT 21H
	;JC DISPLAY_ERROR1_WRITE     ;if there's error in creating file, carry flag = 1, otherwise 0'
	MOV FILEHANDLE_NAME_WRITE, AX

	MOV AH, 40H                        ;request write record
	MOV BX, FILEHANDLE_NAME_WRITE      ;file handle
	MOV CX, NAME_SIZE                  ;record length
	LEA DX, NAME_HIGHEST_SCORE	       ;address of output area
	INT 21H
	;JC DISPLAY_ERROR2_WRITE            ;if carry flag = 1, there's error in writing (nothing is written)'
	CMP AX, NAME_SIZE                  ;after writing, set AX to size of chars nga na write
	;JNE DISPLAY_ERROR3_WRITE

	MOV AH, 3EH                 	 ;request close file
	MOV BX, FILEHANDLE_NAME_WRITE    ;file handle
	INT 21H
RET
WRITE_HIGHEST_SCORE_NAME ENDP
;-------------------------------------------
WRITE_HIGHEST_SCORE PROC NEAR
	XOR AX, AX
		MOV AL, SCORE
		ADC AH, 0
		MOV VAL, AX 
		MOV AX, VAL 
		CALL INT_TO_STR

	MOV AH, 3CH                 ;request create file
	MOV CX, 00                  ;normal attribute
	LEA DX, SCORE_FILE  			;load path and file name
	INT 21H
	;JC DISPLAY_ERROR1_WRITE     ;if there's error in creating file, carry flag = 1, otherwise 0'
	MOV FILEHANDLE_SCORE_WRITE, AX

	MOV AH, 40H                        ;request write record
	MOV BX, FILEHANDLE_SCORE_WRITE      ;file handle
	MOV CX, SCORE_SIZE                  ;record length
	 ;---int score data to string
		
	LEA DX, SCORE_IN_DEC 	       ;address of output area
	INT 21H
	;JC DISPLAY_ERROR2_WRITE            ;if carry flag = 1, there's error in writing (nothing is written)'
	CMP AX, SCORE_SIZE                  ;after writing, set AX to size of chars nga na write
	;JNE DISPLAY_ERROR3_WRITE

	MOV AH, 3EH                 	 ;request close file
	MOV BX, FILEHANDLE_SCORE_WRITE    ;file handle
	INT 21H
RET 
WRITE_HIGHEST_SCORE ENDP
;-------------------------------------------
DISPLAY_LABELS2_GH PROC NEAR
	MOV DX, OFFSET GAMEOVER1
	MOV AH, 09
	INT 21H

	MOV DX, OFFSET YOUR_SCORE_DISPLAY1
	MOV AH, 09
	INT 21H

	 ;---int score data to string
		
		LEA DX, SCORE_IN_DEC
		MOV AH, 09
		INT 21H
	;-------------------------------------------------------------------TODO: print new score - DONE!!!
	MOV DX, OFFSET HIGHEST_SCORE_DISPLAY1
	MOV AH, 09
	INT 21H

	MOV K_ROW, 15
	MOV K_COL, 28
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR

	MOV DX, OFFSET NAME_HIGHEST_SCORE
	MOV AH, 09
	INT 21H

	MOV K_ROW, 16
	MOV K_COL, 27
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR

	MOV DX, OFFSET PREV_SCORE_LABEL
	MOV AH, 09
	INT 21H

	MOV DX, OFFSET SCORE_IN_DEC
	MOV AH, 09
	INT 21H

	MOV K_ROW, 16
	MOV K_COL, 40
	MOV DH, K_ROW
	MOV DL, K_COL
	CALL SET_CURSOR	

	;---print blinking !
	MOV AH, 09H
	MOV AL, '!'
	MOV BH, 00H
	MOV BL, 0F0H
	MOV CX, 1
	INT 10H

	RET 
DISPLAY_LABELS2_GH ENDP
;-------------------------------------------

;-------------------------------------------

;-------------------------------------------
INT_TO_STR PROC NEAR
        MOV BX, 10              ; divisor
        XOR CX, CX              ; CX=0 (number of digits)

    LOOP1:
        XOR DX, DX              ; Attention: DIV applies also DX!
        DIV BX                  ; DX:AX / BX = AX remainder: DX
        PUSH DX                 ; LIFO
        INC CX                  ; increment number of digits
        TEST AX, AX            ; AX = 0?
        JNZ LOOP1          ; no: once more

        MOV DI, OFFSET SCORE_IN_DEC ; target string SCORE_IN_DEC
    LOOP2:
        POP AX                  ; get back pushed digit
        OR AX, 00110000B        ; to ASCII
        MOV BYTE PTR [DI], AL   ; save AL
        INC DI                  ; DI points to next character in string SCORE_IN_DEC
        LOOP LOOP2        		;until there are no digits left
        MOV BYTE PTR [DI], '$'  ; End-of-string delimiter for INT 21 / FN 09h
        RET
INT_TO_STR ENDP
;---------------------------------write error catching
DISPLAY_ERROR1_WRITE:
  LEA DX, ERROR1_STR_WRITE
  MOV AH, 09
  INT 21H

  JMP EXIT

DISPLAY_ERROR2_WRITE:
  LEA DX, ERROR2_STR_WRITE
  MOV AH, 09
  INT 21H

  JMP EXIT

DISPLAY_ERROR3_WRITE:
  LEA DX, ERROR3_STR_WRITE
  MOV AH, 09
  INT 21H
;----------------------------------read error catching
DISPLAY_ERROR1_READ:
  LEA DX, ERROR1_STR_READ
  MOV AH, 09
  INT 21H

  JMP EXIT

DISPLAY_ERROR2_READ:
  LEA DX, ERROR2_STR_READ
  MOV AH, 09
  INT 21H

  JMP EXIT

DISPLAY_ERROR3_READ:
  LEA DX, ERROR3_STR_READ
  MOV AH, 09
  INT 21H

  JMP EXIT
;-----------------------------------------------------------------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------
GAME_START PROC NEAR
	
	MOV GROUND_J_COL, 0
	MOV GROUND_J_ROW, 22

	MOV BIDA_J_COL, 0
	MOV BIDA_J_ROW, 22
	MOV J_ROW, 22
	MOV J_COL, 78
	MOV COUNT, 1
	MOV SCORE, 0
	GAMELOOP: 
      	CALL  CLEAR_SCREEN  ;---to indicate score
        MOV DL, 65
        MOV DH, 2
        CALL SET_CURSOR
        LEA DX, SCORE_LABEL
        MOV AH, 09
        INT 21H

        ;---int score data to string
		XOR AX, AX
		MOV AL, SCORE
		ADC AH, 0
		MOV VAL, AX 
		MOV AX, VAL 
		CALL INT_TO_STR
		LEA DX, SCORE_IN_DEC
		MOV AH, 09
		INT 21H

      	CALL SET_CURSORS

        DISPLAY_ICON:
          CMP COUNT, 1
          JNE CONT1
          JMP DISPLAY_F
          
          CONT1:
          CMP COUNT, 2
          JNE CONT2
          JMP DISPLAY_T

          CONT2:
          CMP COUNT, 3
          JNE CONT3
          JMP DISPLAY_S

          CONT3:
          CMP COUNT, 4
          JNE CONT4
          JMP DISPLAY_I

          CONT4:
          CMP COUNT, 5
          JNE CONT5
          JMP DISPLAY_A

          CONT5:
          CMP COUNT, 6
          JNE CONT6
          JMP DISPLAY_K

          CONT6:
          CMP COUNT, 7
          JNE CONT7
          JMP DISPLAY_C

          CONT7:
          CMP COUNT, 8
          JNE CONT8
          JMP DISPLAY_S

          CONT8:
          CMP COUNT, 9
          JNE CONT9
          JMP DISPLAY_L
          CONT9:
          CMP COUNT, 10
          JE DISPLAY_S
          CMP COUNT, 11
          JE DISPLAY_C
          CMP COUNT, 12
          JE DISPLAY_T
          CMP COUNT, 13
          JE DISPLAY_A

        CONTINUE:
        	CALL  DELAY
        	CALL  J_GET_KEY
        	CALL  MOV_J_COL
        	CALL  CHECK_IF_EXIT

          MOV BL, J_ROW
          CMP BL, BIDA_J_ROW
          JE CHECK_J_COL
    JMP GAMELOOP

    CHECK_J_COL:
      MOV BL, J_COL
      CMP BL, BIDA_J_COL
      JE CHECK_CHAR
      JMP GAMELOOP ;---meaning not in line with the icons and continue the game
    CHECK_CHAR:
      CMP AL, 's'
      JE ADD_SCORE
      CMP AL, 3
       JE ADD_SCORE
      JMP RETURN_TO_MAIN ;---meaning the bida hit a bad icon
    ADD_SCORE:
      INC SCORE
      JMP GAMELOOP 
    ;------------------------------display icons-------------------
    CALL DISPLAY_ICONS
    ;----------------------
    PROCEED:
    	MOV DL, AL
    	MOV AH, 02
    	INT 21H
    	CMP J_COL, 75
    	JG CONT
   	CONT:
    	JMP CONTINUE
    ;---if game over, go back to main
    RETURN_TO_MAIN:
		RET
GAME_START ENDP
;-------------------------------------------
DISPLAY_ICONS PROC NEAR 
	DISPLAY_F:
    	MOV AL, 'f'
    	JMP PROCEED
	  ;----------------------
    DISPLAY_T:
    	MOV AL, 't'
    	JMP PROCEED
    ;----------------------
    DISPLAY_I:
    	MOV AL, 'i'
    	JMP PROCEED  
    ;----------------------  
    DISPLAY_A:
    	MOV AL, 'a'
    	JMP PROCEED
    ;----------------------
    DISPLAY_K:
    	MOV AL, 'k'
    	JMP PROCEED
    ;----------------------
    DISPLAY_C:
    	MOV AL, 'c'
    	JMP PROCEED
    ;----------------------
    DISPLAY_S:
    	MOV AL, 's'
    	JMP PROCEED
    ;----------------------
    DISPLAY_L:
    	MOV AH, 6
      MOV DL, 3 ;--- 3 for heart icon
      INT 21H
      MOV AL, DL
      JMP CONTINUE
RET
DISPLAY_ICONS ENDP
;----------------------------------
SET_CURSORS PROC NEAR 
	MOV DL, GROUND_J_COL ;---print the 2nd ground but steady in a specific position '.'
  	MOV DH, GROUND_J_ROW
  	CALL SET_CURSOR	
  	LEA DX, GROUND1
  	MOV AH, 09
  	INT 21H

    MOV DL, GROUND_J_COL ;---print the 3nd ground but steady in a specific position '-_'
    MOV DH, 22
    CALL SET_CURSOR 
    LEA DX, GROUND2
    MOV AH, 09
    INT 21H

    MOV DL, BIDA_J_COL  ;print the icon on specific position
    MOV DH, BIDA_J_ROW
    CALL SET_CURSOR 
    MOV AH, 06
    MOV DL, 01      ;---1 for smiley icon
    INT 21H

    MOV   DL, J_COL 	;---set the cursor again to position to the moving ground
    MOV   DH, J_ROW    
    CALL  SET_CURSOR
RET 
SET_CURSORS ENDP  
;-------------------------------------------
DELAY PROC NEAR
      MOV BP, 2 ;lower value faster
      MOV SI, 2 ;lower value faster
      
      DELAY2:
        DEC BP
        NOP
        JNZ DELAY2
        DEC SI
        CMP SI, 0
        JNZ DELAY2
        RET
DELAY ENDP
;-------------------------------------------
MOV_J_COL PROC NEAR
	MOVE_POS:
		CMP J_COL, 0
		JE RESET_J_COL
		DEC J_COL
		JMP RETURN0
	
	RESET_J_COL:
		MOV J_COL, 78
		INC COUNT
		CMP COUNT, 14
		JE RESET_COUNT
		JMP RETURN0
	RESET_COUNT:
		MOV COUNT, 1
	RETURN0:
		RET 
MOV_J_COL ENDP
;------------------------------------------
;------------------------------------------
CHECK_IF_EXIT PROC NEAR
    CMP EXIT_INPUT, 01H ;---esc key
    JNE AVOID_ERR
    JMP EXIT

    AVOID_ERR:
    CMP EXIT_INPUT, 48H ;---space key
    JE PREP_MOVE
    JMP RETURN1
    
    PREP_MOVE:
        CMP FLAG, 0 ;---0 flag means it has not jumped yet, 1 means it reached 15 and will go down
        JE CMP_TO_UP
        JMP GO_DOWN

    CMP_TO_UP:
        CMP BIDA_J_ROW, 17
        JG GO_UP
        JMP SET_FLAG

    GO_UP:
        DEC BIDA_J_ROW
        JMP RETURN1
    GO_DOWN:
        CMP BIDA_J_ROW, 22
        JE RETURN2
        INC BIDA_J_ROW
        JMP RETURN1
    SET_FLAG:
        MOV FLAG , 1
    RETURN1:
        RET
    RETURN2:
        MOV FLAG, 0 ;---set back to 0 to follow the same process again
        MOV EXIT_INPUT, 0 ;---reset to not iterate proc w/o pressing up key again
        RET
CHECK_IF_EXIT ENDP
;---------------------
J_GET_KEY PROC NEAR 
      MOV   AH, 01H   ;check for input
      INT   16H

      JZ    LEAVETHIS

      MOV   AH, 00H   ;get input  MOV AH, 10H; INT 16H
      INT   16H

      MOV   EXIT_INPUT, AH

      LEAVETHIS:
      RET
J_GET_KEY   ENDP    

;-------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------
END MAIN




;--------------UPDATE: GAME OVER SCREEN 95% done... score printing to be added... TODO comments added... after TODO, game will be 100% done! IN JESUS NAME!


;-----FINISHING TOUCHES (GOD WILLING): multiple obstacles in 1 screen play, add clouds in the background
