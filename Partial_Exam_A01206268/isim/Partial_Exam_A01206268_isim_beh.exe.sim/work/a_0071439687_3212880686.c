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
static const char *ng0 = "E:/Partial_Exam_A01206268/Partial_Exam_A01206268.vhd";
extern char *IEEE_P_0774719531;

unsigned char ieee_p_0774719531_sub_1742983514_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_2698860368_2162500114(char *, char *, char *, char *, char *);


static void work_a_0071439687_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;

LAB0:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 4612U);
    t4 = (t0 + 684U);
    t5 = *((char **)t4);
    t4 = (t0 + 4628U);
    t6 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t23 = (t0 + 684U);
    t24 = *((char **)t23);
    t23 = (t0 + 4628U);
    t25 = (t0 + 592U);
    t26 = *((char **)t25);
    t25 = (t0 + 4612U);
    t27 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t24, t23, t26, t25);
    if (t27 == 1)
        goto LAB10;

LAB11:    t22 = (unsigned char)0;

LAB12:    if (t22 != 0)
        goto LAB8;

LAB9:
LAB13:    t43 = (t0 + 776U);
    t44 = *((char **)t43);
    t45 = (7 - 7);
    t46 = (t45 * 1U);
    t47 = (0 + t46);
    t43 = (t44 + t47);
    t48 = (t0 + 2712);
    t49 = (t48 + 32U);
    t50 = *((char **)t49);
    t51 = (t50 + 40U);
    t52 = *((char **)t51);
    memcpy(t52, t43, 8U);
    xsi_driver_first_trans_fast_port(t48);

LAB2:    t53 = (t0 + 2628);
    *((int *)t53) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 592U);
    t13 = *((char **)t12);
    t14 = (7 - 7);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t12 = (t13 + t16);
    t17 = (t0 + 2712);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 8U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB2;

LAB5:    t7 = (t0 + 684U);
    t8 = *((char **)t7);
    t7 = (t0 + 4628U);
    t9 = (t0 + 776U);
    t10 = *((char **)t9);
    t9 = (t0 + 4644U);
    t11 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t8, t7, t10, t9);
    t1 = t11;
    goto LAB7;

LAB8:    t33 = (t0 + 684U);
    t34 = *((char **)t33);
    t35 = (7 - 7);
    t36 = (t35 * 1U);
    t37 = (0 + t36);
    t33 = (t34 + t37);
    t38 = (t0 + 2712);
    t39 = (t38 + 32U);
    t40 = *((char **)t39);
    t41 = (t40 + 40U);
    t42 = *((char **)t41);
    memcpy(t42, t33, 8U);
    xsi_driver_first_trans_fast_port(t38);
    goto LAB2;

LAB10:    t28 = (t0 + 592U);
    t29 = *((char **)t28);
    t28 = (t0 + 4612U);
    t30 = (t0 + 776U);
    t31 = *((char **)t30);
    t30 = (t0 + 4644U);
    t32 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t29, t28, t31, t30);
    t22 = t32;
    goto LAB12;

LAB14:    goto LAB2;

}

static void work_a_0071439687_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;

LAB0:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 4612U);
    t4 = (t0 + 684U);
    t5 = *((char **)t4);
    t4 = (t0 + 4628U);
    t6 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t23 = (t0 + 684U);
    t24 = *((char **)t23);
    t23 = (t0 + 4628U);
    t25 = (t0 + 592U);
    t26 = *((char **)t25);
    t25 = (t0 + 4612U);
    t27 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t24, t23, t26, t25);
    if (t27 == 1)
        goto LAB10;

LAB11:    t22 = (unsigned char)0;

LAB12:    if (t22 != 0)
        goto LAB8;

LAB9:
LAB13:    t43 = (t0 + 776U);
    t44 = *((char **)t43);
    t45 = (7 - 7);
    t46 = (t45 * 1U);
    t47 = (0 + t46);
    t43 = (t44 + t47);
    t48 = (t0 + 2748);
    t49 = (t48 + 32U);
    t50 = *((char **)t49);
    t51 = (t50 + 40U);
    t52 = *((char **)t51);
    memcpy(t52, t43, 8U);
    xsi_driver_first_trans_fast_port(t48);

LAB2:    t53 = (t0 + 2636);
    *((int *)t53) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 592U);
    t13 = *((char **)t12);
    t14 = (7 - 7);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t12 = (t13 + t16);
    t17 = (t0 + 2748);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 8U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB2;

LAB5:    t7 = (t0 + 684U);
    t8 = *((char **)t7);
    t7 = (t0 + 4628U);
    t9 = (t0 + 776U);
    t10 = *((char **)t9);
    t9 = (t0 + 4644U);
    t11 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t8, t7, t10, t9);
    t1 = t11;
    goto LAB7;

LAB8:    t33 = (t0 + 684U);
    t34 = *((char **)t33);
    t35 = (7 - 7);
    t36 = (t35 * 1U);
    t37 = (0 + t36);
    t33 = (t34 + t37);
    t38 = (t0 + 2748);
    t39 = (t38 + 32U);
    t40 = *((char **)t39);
    t41 = (t40 + 40U);
    t42 = *((char **)t41);
    memcpy(t42, t33, 8U);
    xsi_driver_first_trans_fast_port(t38);
    goto LAB2;

LAB10:    t28 = (t0 + 592U);
    t29 = *((char **)t28);
    t28 = (t0 + 4612U);
    t30 = (t0 + 776U);
    t31 = *((char **)t30);
    t30 = (t0 + 4644U);
    t32 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t29, t28, t31, t30);
    t22 = t32;
    goto LAB12;

LAB14:    goto LAB2;

}

static void work_a_0071439687_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;

LAB0:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 4612U);
    t4 = (t0 + 684U);
    t5 = *((char **)t4);
    t4 = (t0 + 4628U);
    t6 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t23 = (t0 + 684U);
    t24 = *((char **)t23);
    t23 = (t0 + 4628U);
    t25 = (t0 + 592U);
    t26 = *((char **)t25);
    t25 = (t0 + 4612U);
    t27 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t24, t23, t26, t25);
    if (t27 == 1)
        goto LAB10;

LAB11:    t22 = (unsigned char)0;

LAB12:    if (t22 != 0)
        goto LAB8;

LAB9:
LAB13:    t43 = (t0 + 776U);
    t44 = *((char **)t43);
    t45 = (7 - 7);
    t46 = (t45 * 1U);
    t47 = (0 + t46);
    t43 = (t44 + t47);
    t48 = (t0 + 2784);
    t49 = (t48 + 32U);
    t50 = *((char **)t49);
    t51 = (t50 + 40U);
    t52 = *((char **)t51);
    memcpy(t52, t43, 8U);
    xsi_driver_first_trans_fast_port(t48);

LAB2:    t53 = (t0 + 2644);
    *((int *)t53) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 592U);
    t13 = *((char **)t12);
    t14 = (7 - 7);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t12 = (t13 + t16);
    t17 = (t0 + 2784);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 8U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB2;

LAB5:    t7 = (t0 + 592U);
    t8 = *((char **)t7);
    t7 = (t0 + 4612U);
    t9 = (t0 + 776U);
    t10 = *((char **)t9);
    t9 = (t0 + 4644U);
    t11 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t8, t7, t10, t9);
    t1 = t11;
    goto LAB7;

LAB8:    t33 = (t0 + 684U);
    t34 = *((char **)t33);
    t35 = (7 - 7);
    t36 = (t35 * 1U);
    t37 = (0 + t36);
    t33 = (t34 + t37);
    t38 = (t0 + 2784);
    t39 = (t38 + 32U);
    t40 = *((char **)t39);
    t41 = (t40 + 40U);
    t42 = *((char **)t41);
    memcpy(t42, t33, 8U);
    xsi_driver_first_trans_fast_port(t38);
    goto LAB2;

LAB10:    t28 = (t0 + 684U);
    t29 = *((char **)t28);
    t28 = (t0 + 4628U);
    t30 = (t0 + 776U);
    t31 = *((char **)t30);
    t30 = (t0 + 4644U);
    t32 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t29, t28, t31, t30);
    t22 = t32;
    goto LAB12;

LAB14:    goto LAB2;

}

static void work_a_0071439687_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 4612U);
    t4 = (t0 + 684U);
    t5 = *((char **)t4);
    t4 = (t0 + 4628U);
    t6 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 4628U);
    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t4 = (t0 + 4612U);
    t6 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t2 = (t0 + 2820);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t7 = (t5 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);

LAB3:    t2 = (t0 + 2652);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t12 = (t0 + 592U);
    t13 = *((char **)t12);
    t12 = (t0 + 2820);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB5:    t7 = (t0 + 684U);
    t8 = *((char **)t7);
    t7 = (t0 + 4628U);
    t9 = (t0 + 776U);
    t10 = *((char **)t9);
    t9 = (t0 + 4644U);
    t11 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t8, t7, t10, t9);
    t1 = t11;
    goto LAB7;

LAB8:    xsi_set_current_line(61, ng0);
    t12 = (t0 + 684U);
    t13 = *((char **)t12);
    t12 = (t0 + 2820);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB10:    t7 = (t0 + 592U);
    t8 = *((char **)t7);
    t7 = (t0 + 4612U);
    t9 = (t0 + 776U);
    t10 = *((char **)t9);
    t9 = (t0 + 4644U);
    t11 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t8, t7, t10, t9);
    t1 = t11;
    goto LAB12;

}

static void work_a_0071439687_3212880686_p_4(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 4612U);
    t4 = (t0 + 684U);
    t5 = *((char **)t4);
    t4 = (t0 + 4628U);
    t6 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 4628U);
    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t4 = (t0 + 4612U);
    t6 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t2 = (t0 + 2856);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t7 = (t5 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);

LAB3:    t2 = (t0 + 2660);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng0);
    t12 = (t0 + 592U);
    t13 = *((char **)t12);
    t12 = (t0 + 2856);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB5:    t7 = (t0 + 684U);
    t8 = *((char **)t7);
    t7 = (t0 + 4628U);
    t9 = (t0 + 776U);
    t10 = *((char **)t9);
    t9 = (t0 + 4644U);
    t11 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t8, t7, t10, t9);
    t1 = t11;
    goto LAB7;

LAB8:    xsi_set_current_line(72, ng0);
    t12 = (t0 + 684U);
    t13 = *((char **)t12);
    t12 = (t0 + 2856);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB10:    t7 = (t0 + 592U);
    t8 = *((char **)t7);
    t7 = (t0 + 4612U);
    t9 = (t0 + 776U);
    t10 = *((char **)t9);
    t9 = (t0 + 4644U);
    t11 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t8, t7, t10, t9);
    t1 = t11;
    goto LAB12;

}

static void work_a_0071439687_3212880686_p_5(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 4612U);
    t4 = (t0 + 684U);
    t5 = *((char **)t4);
    t4 = (t0 + 4628U);
    t6 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 4628U);
    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t4 = (t0 + 4612U);
    t6 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t2 = (t0 + 2892);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t7 = (t5 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);

LAB3:    t2 = (t0 + 2668);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(81, ng0);
    t12 = (t0 + 592U);
    t13 = *((char **)t12);
    t12 = (t0 + 2892);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB5:    t7 = (t0 + 592U);
    t8 = *((char **)t7);
    t7 = (t0 + 4612U);
    t9 = (t0 + 776U);
    t10 = *((char **)t9);
    t9 = (t0 + 4644U);
    t11 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t8, t7, t10, t9);
    t1 = t11;
    goto LAB7;

LAB8:    xsi_set_current_line(83, ng0);
    t12 = (t0 + 684U);
    t13 = *((char **)t12);
    t12 = (t0 + 2892);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB10:    t7 = (t0 + 684U);
    t8 = *((char **)t7);
    t7 = (t0 + 4628U);
    t9 = (t0 + 776U);
    t10 = *((char **)t9);
    t9 = (t0 + 4644U);
    t11 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t8, t7, t10, t9);
    t1 = t11;
    goto LAB12;

}


extern void work_a_0071439687_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0071439687_3212880686_p_0,(void *)work_a_0071439687_3212880686_p_1,(void *)work_a_0071439687_3212880686_p_2,(void *)work_a_0071439687_3212880686_p_3,(void *)work_a_0071439687_3212880686_p_4,(void *)work_a_0071439687_3212880686_p_5};
	xsi_register_didat("work_a_0071439687_3212880686", "isim/Partial_Exam_A01206268_isim_beh.exe.sim/work/a_0071439687_3212880686.didat");
	xsi_register_executes(pe);
}
