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
extern char *IEEE_P_2592010699;
extern char *STD_STANDARD;
static const char *ng2 = "C:/Projectos_VHDL/P30_Functions_Procedures/Proc1.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


void work_a_2894181355_3212880686_sub_867917468_3057020925(char *t0, char *t1, int t2, int t3, char *t4)
{
    char t6[16];
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;

LAB0:    t7 = (t6 + 4U);
    *((int *)t7) = t2;
    t8 = (t6 + 8U);
    *((int *)t8) = t3;
    t9 = (t6 + 12U);
    *((char **)t9) = t4;
    t10 = (t2 > t3);
    if (t10 != 0)
        goto LAB2;

LAB4:    t11 = (t4 + 0);
    *((int *)t11) = t3;

LAB3:
LAB1:    return;
LAB2:    t11 = (t4 + 0);
    *((int *)t11) = t2;
    goto LAB3;

}

char *work_a_2894181355_3212880686_sub_602852083_3057020925(char *t1, char *t2, int t3, int t4)
{
    char t5[144];
    char t6[16];
    char t10[16];
    char t25[8];
    char *t0;
    int t7;
    int t8;
    unsigned int t9;
    int t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    unsigned char t33;
    int t34;
    int t35;
    int t36;
    int t37;
    unsigned int t38;

LAB0:    t7 = (t4 - 1);
    t8 = (0 - t7);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t9 = (t9 * 1U);
    t11 = (t4 - 1);
    t12 = (t10 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = t11;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - t11);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t5 + 4U);
    t16 = ((IEEE_P_2592010699) + 2332);
    t17 = (t13 + 52U);
    *((char **)t17) = t16;
    t18 = (char *)alloca(t9);
    t19 = (t13 + 36U);
    *((char **)t19) = t18;
    xsi_type_set_default_value(t16, t18, t10);
    t20 = (t13 + 40U);
    *((char **)t20) = t10;
    t21 = (t13 + 48U);
    *((unsigned int *)t21) = t9;
    t22 = (t5 + 72U);
    t23 = ((STD_STANDARD) + 240);
    t24 = (t22 + 52U);
    *((char **)t24) = t23;
    t26 = (t22 + 36U);
    *((char **)t26) = t25;
    xsi_type_set_default_value(t23, t25, 0);
    t27 = (t22 + 48U);
    *((unsigned int *)t27) = 4U;
    t28 = (t6 + 4U);
    *((int *)t28) = t3;
    t29 = (t6 + 8U);
    *((int *)t29) = t4;
    t30 = (t22 + 36U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    *((int *)t30) = t3;
    t7 = (t4 - 1);
    t8 = 0;
    t11 = t7;

LAB2:    if (t8 <= t11)
        goto LAB3;

LAB5:    t12 = (t13 + 36U);
    t16 = *((char **)t12);
    t12 = (t10 + 12U);
    t9 = *((unsigned int *)t12);
    t9 = (t9 * 1U);
    t0 = xsi_get_transient_memory(t9);
    memcpy(t0, t16, t9);
    t17 = (t10 + 0U);
    t7 = *((int *)t17);
    t19 = (t10 + 4U);
    t8 = *((int *)t19);
    t20 = (t10 + 8U);
    t11 = *((int *)t20);
    t21 = (t2 + 0U);
    t23 = (t21 + 0U);
    *((int *)t23) = t7;
    t23 = (t21 + 4U);
    *((int *)t23) = t8;
    t23 = (t21 + 8U);
    *((int *)t23) = t11;
    t14 = (t8 - t7);
    t15 = (t14 * t11);
    t15 = (t15 + 1);
    t23 = (t21 + 12U);
    *((unsigned int *)t23) = t15;

LAB1:    return t0;
LAB3:    t12 = (t22 + 36U);
    t16 = *((char **)t12);
    t14 = *((int *)t16);
    t32 = xsi_vhdl_mod(t14, 2);
    t33 = (t32 == 1);
    if (t33 != 0)
        goto LAB6;

LAB8:    t12 = (t13 + 36U);
    t16 = *((char **)t12);
    t12 = (t10 + 0U);
    t7 = *((int *)t12);
    t17 = (t10 + 8U);
    t14 = *((int *)t17);
    t32 = (t8 - t7);
    t9 = (t32 * t14);
    t19 = (t10 + 4U);
    t34 = *((int *)t19);
    xsi_vhdl_check_range_of_index(t7, t34, t14, t8);
    t15 = (1U * t9);
    t38 = (0 + t15);
    t20 = (t16 + t38);
    *((unsigned char *)t20) = (unsigned char)2;

LAB7:    t12 = (t22 + 36U);
    t16 = *((char **)t12);
    t7 = *((int *)t16);
    t14 = (t7 / 2);
    t12 = (t22 + 36U);
    t17 = *((char **)t12);
    t12 = (t17 + 0);
    *((int *)t12) = t14;

LAB4:    if (t8 == t11)
        goto LAB5;

LAB9:    t7 = (t8 + 1);
    t8 = t7;
    goto LAB2;

LAB6:    t12 = (t13 + 36U);
    t17 = *((char **)t12);
    t12 = (t10 + 0U);
    t34 = *((int *)t12);
    t19 = (t10 + 8U);
    t35 = *((int *)t19);
    t36 = (t8 - t34);
    t9 = (t36 * t35);
    t20 = (t10 + 4U);
    t37 = *((int *)t20);
    xsi_vhdl_check_range_of_index(t34, t37, t35, t8);
    t15 = (1U * t9);
    t38 = (0 + t15);
    t21 = (t17 + t38);
    *((unsigned char *)t21) = (unsigned char)3;
    goto LAB7;

LAB10:;
}

static void work_a_2894181355_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned char t12;
    char *t13;

LAB0:    xsi_set_current_line(66, ng2);
    t1 = (t0 + 1404);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 2964U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t2);
    t5 = (t0 + 684U);
    t6 = *((char **)t5);
    t5 = (t0 + 2980U);
    t7 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t5);
    t8 = (t0 + 948U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    work_a_2894181355_3212880686_sub_867917468_3057020925(t0, t1, t4, t7, t8);
    xsi_set_current_line(67, ng2);
    t1 = (t0 + 948U);
    t2 = *((char **)t1);
    t4 = *((int *)t2);
    t1 = work_a_2894181355_3212880686_sub_602852083_3057020925(t0, t10, t4, 4);
    t3 = (t10 + 12U);
    t11 = *((unsigned int *)t3);
    t11 = (t11 * 1U);
    t12 = (4U != t11);
    if (t12 == 1)
        goto LAB2;

LAB3:    t5 = (t0 + 1752);
    t6 = (t5 + 32U);
    t8 = *((char **)t6);
    t9 = (t8 + 40U);
    t13 = *((char **)t9);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast_port(t5);
    t1 = (t0 + 1700);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(4U, t11, 0);
    goto LAB3;

}


extern void work_a_2894181355_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2894181355_3212880686_p_0};
	static char *se[] = {(void *)work_a_2894181355_3212880686_sub_867917468_3057020925,(void *)work_a_2894181355_3212880686_sub_602852083_3057020925};
	xsi_register_didat("work_a_2894181355_3212880686", "isim/Proc1_isim_beh.exe.sim/work/a_2894181355_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
