
_main:

;NukeTest2a.c,19 :: 		void main() {
;NukeTest2a.c,20 :: 		Lcd_Init(); // LCD display initialization
	CALL        _Lcd_Init+0, 0
;NukeTest2a.c,21 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); // LCD command (cursor off)
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NukeTest2a.c,22 :: 		Lcd_Cmd(_LCD_CLEAR); // LCD command (clear LCD)
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;NukeTest2a.c,23 :: 		text = "LCD Interfacing"; // Define the first message
	MOVLW       ?lstr1_NukeTest2a+0
	MOVWF       _text+0 
	MOVLW       hi_addr(?lstr1_NukeTest2a+0)
	MOVWF       _text+1 
;NukeTest2a.c,24 :: 		Lcd_Out(1,1,text); // Write the first message in the first line
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVF        _text+0, 0 
	MOVWF       FARG_Lcd_Out_text+0 
	MOVF        _text+1, 0 
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NukeTest2a.c,25 :: 		delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main0:
	DECFSZ      R13, 1, 1
	BRA         L_main0
	DECFSZ      R12, 1, 1
	BRA         L_main0
	DECFSZ      R11, 1, 1
	BRA         L_main0
	NOP
	NOP
;NukeTest2a.c,26 :: 		text = "PIC18F4550"; // Define the second message
	MOVLW       ?lstr2_NukeTest2a+0
	MOVWF       _text+0 
	MOVLW       hi_addr(?lstr2_NukeTest2a+0)
	MOVWF       _text+1 
;NukeTest2a.c,27 :: 		Lcd_Out(2,1,text); // Define the first message
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVF        _text+0, 0 
	MOVWF       FARG_Lcd_Out_text+0 
	MOVF        _text+1, 0 
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NukeTest2a.c,29 :: 		delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main1:
	DECFSZ      R13, 1, 1
	BRA         L_main1
	DECFSZ      R12, 1, 1
	BRA         L_main1
	DECFSZ      R11, 1, 1
	BRA         L_main1
	NOP
	NOP
;NukeTest2a.c,30 :: 		text = "         "; // Define the second message
	MOVLW       ?lstr3_NukeTest2a+0
	MOVWF       _text+0 
	MOVLW       hi_addr(?lstr3_NukeTest2a+0)
	MOVWF       _text+1 
;NukeTest2a.c,31 :: 		Lcd_Out(2,1,text);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVF        _text+0, 0 
	MOVWF       FARG_Lcd_Out_text+0 
	MOVF        _text+1, 0 
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;NukeTest2a.c,37 :: 		while (1);
L_main2:
	GOTO        L_main2
;NukeTest2a.c,38 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
