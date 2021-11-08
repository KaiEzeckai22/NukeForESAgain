//#include<stdio.h>
//#include<stdlib.h>
// LCD module connections

sbit LCD_RS at RB0_bit;
sbit LCD_EN at RB1_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;
// End LCD module connections
char *text;
void main() {
 Lcd_Init(); // LCD display initialization
 Lcd_Cmd(_LCD_CURSOR_OFF); // LCD command (cursor off)
 Lcd_Cmd(_LCD_CLEAR); // LCD command (clear LCD)
 text = "LCD Interfacing"; // Define the first message
 Lcd_Out(1,1,text); // Write the first message in the first line
 delay_ms(1000);
 text = "PIC18F4550"; // Define the second message
 Lcd_Out(2,1,text); // Define the first message
 
 delay_ms(1000);
 text = "          "; // Define the second message
 Lcd_Out(2,1,text);
 /*
 for(int i=0;i<9;i++) {
   text = i;
   Lcd_Out(2,1,text);
  }         */
 while (1);
}


void display_up(String