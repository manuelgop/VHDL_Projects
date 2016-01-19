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
static const char *ng0 = "D:/Projects_SisDigAva/P08a_Arithmetic/Arithmetic.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_3158760445_3536714472(char *, char *, char *, char *, char *, char *);


static void work_a_1225102926_3212880686_p_0(char *t0)
{
    char t1[16];
    char t11[16];
    char t23[16];
    char *t2;
    char *t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(40, ng0);

LAB3:    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t4 = (3 - 3);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t2 = (t3 + t7);
    t8 = *((unsigned char *)t2);
    t9 = (t0 + 592U);
    t10 = *((char **)t9);
    t12 = ((IEEE_P_3499444699) + 1564);
    t13 = (t0 + 2816U);
    t9 = xsi_base_array_concat(t9, t11, t12, (char)99, t8, (char)97, t10, t13, (char)101);
    t14 = (t0 + 684U);
    t15 = *((char **)t14);
    t16 = (3 - 3);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t14 = (t15 + t19);
    t20 = *((unsigned char *)t14);
    t21 = (t0 + 684U);
    t22 = *((char **)t21);
    t24 = ((IEEE_P_3499444699) + 1564);
    t25 = (t0 + 2832U);
    t21 = xsi_base_array_concat(t21, t23, t24, (char)99, t20, (char)97, t22, t25, (char)101);
    t26 = ieee_p_3499444699_sub_3158760445_3536714472(IEEE_P_3499444699, t1, t9, t11, t21, t23);
    t27 = (t1 + 12U);
    t28 = *((unsigned int *)t27);
    t29 = (1U * t28);
    t30 = (5U != t29);
    if (t30 == 1)
        goto LAB5;

LAB6:    t31 = (t0 + 1676);
    t32 = (t31 + 32U);
    t33 = *((char **)t32);
    t34 = (t33 + 40U);
    t35 = *((char **)t34);
    memcpy(t35, t26, 5U);
    xsi_driver_first_trans_fast_port(t31);

LAB2:    t36 = (t0 + 1632);
    *((int *)t36) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t29, 0);
    goto LAB6;

}


extern void work_a_1225102926_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1225102926_3212880686_p_0};
	xsi_register_didat("work_a_1225102926_3212880686", "isim/Arithmetic_vtb_isim_beh.exe.sim/work/a_1225102926_3212880686.didat");
	xsi_register_executes(pe);
}
