#line 1 "C:/@Nexus_Access/_desktop/4th Year Academics 2021-2022 Sem 1/NukeCodes(ES,Thesis)/Nuke1/NukeTest2a.c"




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

char *text;
void main() {
 Lcd_Init();
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Cmd(_LCD_CLEAR);
 text = "LCD Interfacing";
 Lcd_Out(1,1,text);
 delay_ms(1000);
 text = "PIC18F4550";
 Lcd_Out(2,1,text);

 delay_ms(1000);
 text = "         ";
 Lcd_Out(2,1,text);
#line 37 "C:/@Nexus_Access/_desktop/4th Year Academics 2021-2022 Sem 1/NukeCodes(ES,Thesis)/Nuke1/NukeTest2a.c"
 while (1);
}
