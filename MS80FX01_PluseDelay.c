/****************************************************************************
*       Copyright (C), 北京四维拓智教育科技有限公司
*
*       MS80F080
*       V0.1
*       2017-12-04
*       Woody  QQ:2490006131
*****************************************************************************/
#include "syscfg.h"

/*******************宏定义********************/
#define _XTAL_FREQ 		16000000		//4T
#define EEpromStartAdd  0x00
#define u16             unsigned int
#define u8              unsigned char


#define OUTPUT_H        RA5 = 1
#define OUTPUT_L        RA5 = 0

#define BlueLED_H       RA4 = 1
#define BlueLED_L       RA4 = 0

#define KEY_STUDY       RA0   // 4->0
#define INPUT_Q         RA1   // 3->1
#define Dial            RA2   //RA1->RA2


/*******************函数声明********************/
void System_init(void);
void GPIO_Init(void);
void Timer2_Init(void);
void KEY_Scan(void);
u8 Read_EEPROM_u8(u8 EEAddress);
u16 Read_EEPROM_u16(u8 EEAddress);
void Write_EEPROM_u8(u8 EEAddress,u8 EEDatas);
void Write_EEPROM_u16(u8 EEAddress,u16 EEDatas);
void Timer2_Overflow_SR(void);
void LED_Study_End(void);
void Control(void);
/*******************变量********************/
u8  Flag_Timer2Overflow=0;
u16 Set_Time=0;
u16 PWM_set=0;  // 学习计数模式
u16 count=0;    // 学习时间计数控制
u8  number=0;
u8  Set_Flag=0;
u8  FLAG_DELAY=0;
u8  FLAG_MAICHONG=0;
u8  delay_flag=0;    //延迟模式控制LED亮
u8  maichong_flag=0; //控制脉冲计数清零

//===============Interrupt_Service_Routine===============
void interrupt ISR(void)
{
    if(TMR2IE&&TMR2IF) {
        TMR2IF = 0;
        Flag_Timer2Overflow++;
        if(Flag_Timer2Overflow == 50) {
            Flag_Timer2Overflow=0;
            Timer2_Overflow_SR();
        }
    }
}

// 主函数
void main(void)
{
    System_init();
    GPIO_Init();
    Timer2_Init();
    OUTPUT_L;
    LED_Study_End();
    Set_Time = Read_EEPROM_u16(EEpromStartAdd);
    if(Set_Time == 0XFFFF)  Set_Time = 20;  //50ms 计数一次

    while(1) {
        KEY_Scan();
        Control();
    }
}
/*******************系统 初始化*********************/
void System_init(void)
{
    PCON    = 0x03;
    MSCKCON = 0x10;   //开启LVR 低电压检测
    OSCCON  = 0x70;   //内部振荡器选择 16Mhz
    INTCON  = 0x00;	  //暂禁止所有中断

}
/*******************定时器2 初始化*********************/
void Timer2_Init(void)
{
    TMR2 = 0;
    T2CON = 0x07;		//PSA=1:16
    PR2 = 250;				//Overflpw T=(1/16MHz)*4*16*250=1000us
    TMR2IF = 0;
    TMR2IE = 1;
    PEIE = 1;
    GIE = 1;
}
/*******************GPIO 初始化*********************/
void GPIO_Init(void)
{
    OPTION = 0x00;		//Bit7为上拉使能总闸
    //TRISA 配置输入输出 PA3只做输入引脚
    TRISA0=1;//0=输出，1=输入
    TRISA1=1;//0=输出，1=输入
    TRISA2=1;//0=输出，1=输入
    TRISA4=0;//0=输出，1=输入
    TRISA5=0;//0=输出，1=输入
    //WPUA 配置输入引脚要不要上拉 先开启option的PAPU使能总上拉
    WPUA0=1;//1=使能上拉，0=禁止上拉
    WPUA1=1;//1=使能上拉，0=禁止上拉
    WPUA2=1;//1=使能上拉，0=禁止上拉
    WPUA4=0;//1=使能上拉，0=禁止上拉
    WPUA5=0;//1=使能上拉，0=禁止上拉
}
/*******************流程控制函数 *********************/
void Control(void)
{
    if(Dial == 0) { // 延迟
        FLAG_MAICHONG = 0;
        WPUA1=0;//1=使能上拉，0=禁止上拉
        if(INPUT_Q == 1) {
            delay_flag = 0;
            OUTPUT_H;
            __delay_ms(20);
            count=0;
            if(INPUT_Q != 0)
                FLAG_DELAY=0;
            else
                FLAG_DELAY=1;
        } else {
            if(delay_flag == 0) {
                delay_flag=1;
                FLAG_DELAY=1;
            }

        }
    } else { 	//	 脉冲
        WPUA1=1;//1=使能上拉，0=禁止上拉
        FLAG_DELAY=0;
        if(INPUT_Q != 0) {
            if(maichong_flag == 0) {
                maichong_flag = 1;
                count = 0;
                OUTPUT_H;
            }
            delay_flag = 0;
            FLAG_MAICHONG = 1;
            __delay_ms(5);
            if(INPUT_Q != 0)
                FLAG_MAICHONG=1;
            else
                FLAG_MAICHONG=0;
        } else {
            FLAG_MAICHONG=0;  // L
            maichong_flag=0;
            if(KEY_STUDY == 0) {
                BlueLED_H;
            } else {
                BlueLED_L;
                OUTPUT_L;
            }
        }
    }
}

/***函数功能:Timer2溢出服务程序***/
void Timer2_Overflow_SR(void)
{
    if(number == 1) {
        PWM_set++;
    } else if(number == 0) {
        if(FLAG_MAICHONG == 1) {
            count++;
            if(count >= Set_Time) {
                count = 0;
                RA5=~RA5;
            }
        }
        //////////////////////
        if(FLAG_DELAY == 1) {
            count++;
            if(count >= Set_Time) {
                OUTPUT_L;
                count = 0;
                FLAG_DELAY=0;
            }
        }
    }
}

/*******************KEY 初始化*********************/
void KEY_Scan(void)
{
    if(KEY_STUDY == 0) {
        __delay_ms(20);
        if(KEY_STUDY == 0) {
            number=1;
            Set_Flag=1;
            OUTPUT_L;
            BlueLED_H;
        } else if(Set_Flag == 1) {
            OUTPUT_L;
            BlueLED_L;

            number=0;
            Set_Flag=0;
            Set_Time = PWM_set;
            Write_EEPROM_u16(EEpromStartAdd,Set_Time);
            //LED_Study_End();
            PWM_set=0;
        }
    } else if(Set_Flag == 1) {
        OUTPUT_L;
        BlueLED_L;
        number=0;
        Set_Flag = 0;
        Set_Time = PWM_set;
        Write_EEPROM_u16(EEpromStartAdd,Set_Time);
        //LED_Study_End();
        PWM_set=0;
    }
}
/*******************LED学习完成 函数*********************/
void LED_Study_End(void)
{
    BlueLED_H;
    __delay_ms(40);
    BlueLED_L;
    __delay_ms(40);
    BlueLED_H;
    __delay_ms(40);
    BlueLED_L;
    __delay_ms(40);
    BlueLED_H;
    __delay_ms(40);
    BlueLED_L;
    __delay_ms(40);
}

/*******************EEPROM 初始化*********************/

//写EEPROM 数据  u16
void Write_EEPROM_u16(u8 EEAddress,u16 EEDatas)
{
    Write_EEPROM_u8(EEAddress,(EEDatas>>8)&0xff);
    Write_EEPROM_u8(EEAddress+1,EEDatas&0xff);
}
//读EEPROM 数据  u16
u16 Read_EEPROM_u16(u8 EEAddress)
{
    u16 EepromData=0;

    EepromData = Read_EEPROM_u8(EEAddress);
    EepromData = EepromData<<8;
    EepromData |= Read_EEPROM_u8(EEAddress+1);
    return 	EepromData;
}
//写EEPROM 数据  u8
void Write_EEPROM_u8(u8 EEAddress,u8 EEDatas)
{
    EEADR  = EEAddress;
    asm("nop");
    EEDAT  = EEDatas;
    EECON1 = 0x34;
    EECON2 = 0x01;
    asm("nop");
    asm("nop");
    asm("nop");
    while(WR==1)CLRWDT();
    WREN1 = 0;
    WREN2 = 0;
    WREN3 = 0;
}
//读取EEPROM数据 u8
u8 Read_EEPROM_u8(u8 EEAddress)
{
    u8 EepromData=0;
    EEADR  = EEAddress;
    RD = 1;
    EepromData = EEDAT;
    RD = 0;
    return 	EepromData;
}


