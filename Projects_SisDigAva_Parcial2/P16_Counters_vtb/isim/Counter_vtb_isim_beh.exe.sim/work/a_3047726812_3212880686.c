/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Projects_SisDigAva/P16_Counters_vtb/Counters.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_4058165771_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3047726812_3212880686_p_0(char *t0)
{
    char t8[16];
    char t13[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 660U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 1040U);
    t2 = *((char **)t1);
    t1 = (t0 + 1836);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t9 = *((char **)t7);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 1792);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(111, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 1040U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 4U);
    goto LAB3;

LAB5:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 1040U);
    t5 = *((char **)t2);
    t2 = (t0 + 3184U);
    t6 = (t0 + 3218);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 3;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (3 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t4 = ieee_p_3620187407_sub_4058165771_3965413181(IEEE_P_3620187407, t5, t2, t6, t8);
    if (t4 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 1040U);
    t2 = *((char **)t1);
    t1 = (t0 + 3184U);
    t5 = (t0 + 3222);
    t7 = (t8 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 0;
    t9 = (t7 + 4U);
    *((int *)t9) = 3;
    t9 = (t7 + 8U);
    *((int *)t9) = 1;
    t11 = (3 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t12;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t8);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    xsi_set_current_line(114, ng0);
    t10 = (t0 + 1040U);
    t14 = *((char **)t10);
    t10 = (t0 + 3184U);
    t15 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t14, t10, 1);
    t16 = (t0 + 1040U);
    t17 = *((char **)t16);
    t16 = (t17 + 0);
    t18 = (t13 + 12U);
    t12 = *((unsigned int *)t18);
    t19 = (1U * t12);
    memcpy(t16, t15, t19);
    goto LAB8;

LAB10:    xsi_set_current_line(117, ng0);
    t9 = xsi_get_transient_memory(4U);
    memset(t9, 0, 4U);
    t10 = t9;
    memset(t10, (unsigned char)2, 4U);
    t14 = (t0 + 1040U);
    t15 = *((char **)t14);
    t14 = (t15 + 0);
    memcpy(t14, t9, 4U);
    goto LAB11;

}


extern void work_a_3047726812_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3047726812_3212880686_p_0};
	xsi_register_didat("work_a_3047726812_3212880686", "isim/Counter_vtb_isim_beh.exe.sim/work/a_3047726812_3212880686.didat");
	xsi_register_executes(pe);
}
