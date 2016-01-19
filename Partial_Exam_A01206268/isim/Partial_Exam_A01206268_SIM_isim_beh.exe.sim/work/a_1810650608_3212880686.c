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


static void work_a_1810650608_3212880686_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned char t41;
    unsigned char t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned char t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    unsigned char t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;

LAB0:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t3 = (t0 + 4612U);
    t5 = (t0 + 684U);
    t6 = *((char **)t5);
    t5 = (t0 + 4628U);
    t7 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t4, t3, t6, t5);
    if (t7 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 592U);
    t15 = *((char **)t14);
    t14 = (t0 + 4612U);
    t16 = (t0 + 776U);
    t17 = *((char **)t16);
    t16 = (t0 + 4644U);
    t18 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t15, t14, t17, t16);
    if (t18 == 1)
        goto LAB11;

LAB12:    t13 = (unsigned char)0;

LAB13:    t1 = t13;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t32 = (t0 + 684U);
    t33 = *((char **)t32);
    t32 = (t0 + 4628U);
    t34 = (t0 + 592U);
    t35 = *((char **)t34);
    t34 = (t0 + 4612U);
    t36 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t33, t32, t35, t34);
    if (t36 == 1)
        goto LAB19;

LAB20:    t31 = (unsigned char)0;

LAB21:    if (t31 == 1)
        goto LAB16;

LAB17:    t43 = (t0 + 684U);
    t44 = *((char **)t43);
    t43 = (t0 + 4628U);
    t45 = (t0 + 776U);
    t46 = *((char **)t45);
    t45 = (t0 + 4644U);
    t47 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t44, t43, t46, t45);
    if (t47 == 1)
        goto LAB22;

LAB23:    t42 = (unsigned char)0;

LAB24:    t30 = t42;

LAB18:    if (t30 != 0)
        goto LAB14;

LAB15:
LAB25:    t59 = (t0 + 776U);
    t60 = *((char **)t59);
    t59 = (t0 + 2712);
    t61 = (t59 + 32U);
    t62 = *((char **)t61);
    t63 = (t62 + 40U);
    t64 = *((char **)t63);
    memcpy(t64, t60, 8U);
    xsi_driver_first_trans_fast_port(t59);

LAB2:    t65 = (t0 + 2628);
    *((int *)t65) = 1;

LAB1:    return;
LAB3:    t24 = (t0 + 592U);
    t25 = *((char **)t24);
    t24 = (t0 + 2712);
    t26 = (t24 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t8 = (t0 + 684U);
    t9 = *((char **)t8);
    t8 = (t0 + 4628U);
    t10 = (t0 + 776U);
    t11 = *((char **)t10);
    t10 = (t0 + 4644U);
    t12 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t9, t8, t11, t10);
    t2 = t12;
    goto LAB10;

LAB11:    t19 = (t0 + 776U);
    t20 = *((char **)t19);
    t19 = (t0 + 4644U);
    t21 = (t0 + 684U);
    t22 = *((char **)t21);
    t21 = (t0 + 4628U);
    t23 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t20, t19, t22, t21);
    t13 = t23;
    goto LAB13;

LAB14:    t53 = (t0 + 684U);
    t54 = *((char **)t53);
    t53 = (t0 + 2712);
    t55 = (t53 + 32U);
    t56 = *((char **)t55);
    t57 = (t56 + 40U);
    t58 = *((char **)t57);
    memcpy(t58, t54, 8U);
    xsi_driver_first_trans_fast_port(t53);
    goto LAB2;

LAB16:    t30 = (unsigned char)1;
    goto LAB18;

LAB19:    t37 = (t0 + 592U);
    t38 = *((char **)t37);
    t37 = (t0 + 4612U);
    t39 = (t0 + 776U);
    t40 = *((char **)t39);
    t39 = (t0 + 4644U);
    t41 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t38, t37, t40, t39);
    t31 = t41;
    goto LAB21;

LAB22:    t48 = (t0 + 776U);
    t49 = *((char **)t48);
    t48 = (t0 + 4644U);
    t50 = (t0 + 592U);
    t51 = *((char **)t50);
    t50 = (t0 + 4612U);
    t52 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t49, t48, t51, t50);
    t42 = t52;
    goto LAB24;

LAB26:    goto LAB2;

}

static void work_a_1810650608_3212880686_p_1(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned char t41;
    unsigned char t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned char t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    unsigned char t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;

LAB0:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t3 = (t0 + 4612U);
    t5 = (t0 + 684U);
    t6 = *((char **)t5);
    t5 = (t0 + 4628U);
    t7 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t4, t3, t6, t5);
    if (t7 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 592U);
    t15 = *((char **)t14);
    t14 = (t0 + 4612U);
    t16 = (t0 + 776U);
    t17 = *((char **)t16);
    t16 = (t0 + 4644U);
    t18 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t15, t14, t17, t16);
    if (t18 == 1)
        goto LAB11;

LAB12:    t13 = (unsigned char)0;

LAB13:    t1 = t13;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t32 = (t0 + 684U);
    t33 = *((char **)t32);
    t32 = (t0 + 4628U);
    t34 = (t0 + 592U);
    t35 = *((char **)t34);
    t34 = (t0 + 4612U);
    t36 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t33, t32, t35, t34);
    if (t36 == 1)
        goto LAB19;

LAB20:    t31 = (unsigned char)0;

LAB21:    if (t31 == 1)
        goto LAB16;

LAB17:    t43 = (t0 + 684U);
    t44 = *((char **)t43);
    t43 = (t0 + 4628U);
    t45 = (t0 + 776U);
    t46 = *((char **)t45);
    t45 = (t0 + 4644U);
    t47 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t44, t43, t46, t45);
    if (t47 == 1)
        goto LAB22;

LAB23:    t42 = (unsigned char)0;

LAB24:    t30 = t42;

LAB18:    if (t30 != 0)
        goto LAB14;

LAB15:
LAB25:    t59 = (t0 + 776U);
    t60 = *((char **)t59);
    t59 = (t0 + 2748);
    t61 = (t59 + 32U);
    t62 = *((char **)t61);
    t63 = (t62 + 40U);
    t64 = *((char **)t63);
    memcpy(t64, t60, 8U);
    xsi_driver_first_trans_fast_port(t59);

LAB2:    t65 = (t0 + 2636);
    *((int *)t65) = 1;

LAB1:    return;
LAB3:    t24 = (t0 + 592U);
    t25 = *((char **)t24);
    t24 = (t0 + 2748);
    t26 = (t24 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t8 = (t0 + 684U);
    t9 = *((char **)t8);
    t8 = (t0 + 4628U);
    t10 = (t0 + 776U);
    t11 = *((char **)t10);
    t10 = (t0 + 4644U);
    t12 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t9, t8, t11, t10);
    t2 = t12;
    goto LAB10;

LAB11:    t19 = (t0 + 776U);
    t20 = *((char **)t19);
    t19 = (t0 + 4644U);
    t21 = (t0 + 684U);
    t22 = *((char **)t21);
    t21 = (t0 + 4628U);
    t23 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t20, t19, t22, t21);
    t13 = t23;
    goto LAB13;

LAB14:    t53 = (t0 + 684U);
    t54 = *((char **)t53);
    t53 = (t0 + 2748);
    t55 = (t53 + 32U);
    t56 = *((char **)t55);
    t57 = (t56 + 40U);
    t58 = *((char **)t57);
    memcpy(t58, t54, 8U);
    xsi_driver_first_trans_fast_port(t53);
    goto LAB2;

LAB16:    t30 = (unsigned char)1;
    goto LAB18;

LAB19:    t37 = (t0 + 592U);
    t38 = *((char **)t37);
    t37 = (t0 + 4612U);
    t39 = (t0 + 776U);
    t40 = *((char **)t39);
    t39 = (t0 + 4644U);
    t41 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t38, t37, t40, t39);
    t31 = t41;
    goto LAB21;

LAB22:    t48 = (t0 + 776U);
    t49 = *((char **)t48);
    t48 = (t0 + 4644U);
    t50 = (t0 + 592U);
    t51 = *((char **)t50);
    t50 = (t0 + 4612U);
    t52 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t49, t48, t51, t50);
    t42 = t52;
    goto LAB24;

LAB26:    goto LAB2;

}

static void work_a_1810650608_3212880686_p_2(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned char t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned char t41;
    unsigned char t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned char t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    unsigned char t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;

LAB0:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t3 = (t0 + 4612U);
    t5 = (t0 + 684U);
    t6 = *((char **)t5);
    t5 = (t0 + 4628U);
    t7 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t4, t3, t6, t5);
    if (t7 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 592U);
    t15 = *((char **)t14);
    t14 = (t0 + 4612U);
    t16 = (t0 + 776U);
    t17 = *((char **)t16);
    t16 = (t0 + 4644U);
    t18 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t15, t14, t17, t16);
    if (t18 == 1)
        goto LAB11;

LAB12:    t13 = (unsigned char)0;

LAB13:    t1 = t13;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t32 = (t0 + 684U);
    t33 = *((char **)t32);
    t32 = (t0 + 4628U);
    t34 = (t0 + 592U);
    t35 = *((char **)t34);
    t34 = (t0 + 4612U);
    t36 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t33, t32, t35, t34);
    if (t36 == 1)
        goto LAB19;

LAB20:    t31 = (unsigned char)0;

LAB21:    if (t31 == 1)
        goto LAB16;

LAB17:    t43 = (t0 + 684U);
    t44 = *((char **)t43);
    t43 = (t0 + 4628U);
    t45 = (t0 + 776U);
    t46 = *((char **)t45);
    t45 = (t0 + 4644U);
    t47 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t44, t43, t46, t45);
    if (t47 == 1)
        goto LAB22;

LAB23:    t42 = (unsigned char)0;

LAB24:    t30 = t42;

LAB18:    if (t30 != 0)
        goto LAB14;

LAB15:
LAB25:    t59 = (t0 + 776U);
    t60 = *((char **)t59);
    t59 = (t0 + 2784);
    t61 = (t59 + 32U);
    t62 = *((char **)t61);
    t63 = (t62 + 40U);
    t64 = *((char **)t63);
    memcpy(t64, t60, 8U);
    xsi_driver_first_trans_fast_port(t59);

LAB2:    t65 = (t0 + 2644);
    *((int *)t65) = 1;

LAB1:    return;
LAB3:    t24 = (t0 + 592U);
    t25 = *((char **)t24);
    t24 = (t0 + 2784);
    t26 = (t24 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t8 = (t0 + 592U);
    t9 = *((char **)t8);
    t8 = (t0 + 4612U);
    t10 = (t0 + 776U);
    t11 = *((char **)t10);
    t10 = (t0 + 4644U);
    t12 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t9, t8, t11, t10);
    t2 = t12;
    goto LAB10;

LAB11:    t19 = (t0 + 592U);
    t20 = *((char **)t19);
    t19 = (t0 + 4612U);
    t21 = (t0 + 684U);
    t22 = *((char **)t21);
    t21 = (t0 + 4628U);
    t23 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t20, t19, t22, t21);
    t13 = t23;
    goto LAB13;

LAB14:    t53 = (t0 + 684U);
    t54 = *((char **)t53);
    t53 = (t0 + 2784);
    t55 = (t53 + 32U);
    t56 = *((char **)t55);
    t57 = (t56 + 40U);
    t58 = *((char **)t57);
    memcpy(t58, t54, 8U);
    xsi_driver_first_trans_fast_port(t53);
    goto LAB2;

LAB16:    t30 = (unsigned char)1;
    goto LAB18;

LAB19:    t37 = (t0 + 684U);
    t38 = *((char **)t37);
    t37 = (t0 + 4628U);
    t39 = (t0 + 776U);
    t40 = *((char **)t39);
    t39 = (t0 + 4644U);
    t41 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t38, t37, t40, t39);
    t31 = t41;
    goto LAB21;

LAB22:    t48 = (t0 + 684U);
    t49 = *((char **)t48);
    t48 = (t0 + 4628U);
    t50 = (t0 + 592U);
    t51 = *((char **)t50);
    t50 = (t0 + 4612U);
    t52 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t49, t48, t51, t50);
    t42 = t52;
    goto LAB24;

LAB26:    goto LAB2;

}

static void work_a_1810650608_3212880686_p_3(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t3 = (t0 + 4612U);
    t5 = (t0 + 684U);
    t6 = *((char **)t5);
    t5 = (t0 + 4628U);
    t7 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t4, t3, t6, t5);
    if (t7 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 592U);
    t15 = *((char **)t14);
    t14 = (t0 + 4612U);
    t16 = (t0 + 776U);
    t17 = *((char **)t16);
    t16 = (t0 + 4644U);
    t18 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t15, t14, t17, t16);
    if (t18 == 1)
        goto LAB11;

LAB12:    t13 = (unsigned char)0;

LAB13:    t1 = t13;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t3 = (t0 + 684U);
    t4 = *((char **)t3);
    t3 = (t0 + 4628U);
    t5 = (t0 + 592U);
    t6 = *((char **)t5);
    t5 = (t0 + 4612U);
    t7 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t4, t3, t6, t5);
    if (t7 == 1)
        goto LAB19;

LAB20:    t2 = (unsigned char)0;

LAB21:    if (t2 == 1)
        goto LAB16;

LAB17:    t14 = (t0 + 684U);
    t15 = *((char **)t14);
    t14 = (t0 + 4628U);
    t16 = (t0 + 776U);
    t17 = *((char **)t16);
    t16 = (t0 + 4644U);
    t18 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t15, t14, t17, t16);
    if (t18 == 1)
        goto LAB22;

LAB23:    t13 = (unsigned char)0;

LAB24:    t1 = t13;

LAB18:    if (t1 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 776U);
    t4 = *((char **)t3);
    t3 = (t0 + 2820);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB3:    t3 = (t0 + 2652);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t24 = (t0 + 592U);
    t25 = *((char **)t24);
    t24 = (t0 + 2820);
    t26 = (t24 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t8 = (t0 + 684U);
    t9 = *((char **)t8);
    t8 = (t0 + 4628U);
    t10 = (t0 + 776U);
    t11 = *((char **)t10);
    t10 = (t0 + 4644U);
    t12 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t9, t8, t11, t10);
    t2 = t12;
    goto LAB10;

LAB11:    t19 = (t0 + 776U);
    t20 = *((char **)t19);
    t19 = (t0 + 4644U);
    t21 = (t0 + 684U);
    t22 = *((char **)t21);
    t21 = (t0 + 4628U);
    t23 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t20, t19, t22, t21);
    t13 = t23;
    goto LAB13;

LAB14:    xsi_set_current_line(61, ng0);
    t24 = (t0 + 684U);
    t25 = *((char **)t24);
    t24 = (t0 + 2820);
    t26 = (t24 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB3;

LAB16:    t1 = (unsigned char)1;
    goto LAB18;

LAB19:    t8 = (t0 + 592U);
    t9 = *((char **)t8);
    t8 = (t0 + 4612U);
    t10 = (t0 + 776U);
    t11 = *((char **)t10);
    t10 = (t0 + 4644U);
    t12 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t9, t8, t11, t10);
    t2 = t12;
    goto LAB21;

LAB22:    t19 = (t0 + 776U);
    t20 = *((char **)t19);
    t19 = (t0 + 4644U);
    t21 = (t0 + 592U);
    t22 = *((char **)t21);
    t21 = (t0 + 4612U);
    t23 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t20, t19, t22, t21);
    t13 = t23;
    goto LAB24;

}

static void work_a_1810650608_3212880686_p_4(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t3 = (t0 + 4612U);
    t5 = (t0 + 684U);
    t6 = *((char **)t5);
    t5 = (t0 + 4628U);
    t7 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t4, t3, t6, t5);
    if (t7 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 592U);
    t15 = *((char **)t14);
    t14 = (t0 + 4612U);
    t16 = (t0 + 776U);
    t17 = *((char **)t16);
    t16 = (t0 + 4644U);
    t18 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t15, t14, t17, t16);
    if (t18 == 1)
        goto LAB11;

LAB12:    t13 = (unsigned char)0;

LAB13:    t1 = t13;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t3 = (t0 + 684U);
    t4 = *((char **)t3);
    t3 = (t0 + 4628U);
    t5 = (t0 + 592U);
    t6 = *((char **)t5);
    t5 = (t0 + 4612U);
    t7 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t4, t3, t6, t5);
    if (t7 == 1)
        goto LAB19;

LAB20:    t2 = (unsigned char)0;

LAB21:    if (t2 == 1)
        goto LAB16;

LAB17:    t14 = (t0 + 684U);
    t15 = *((char **)t14);
    t14 = (t0 + 4628U);
    t16 = (t0 + 776U);
    t17 = *((char **)t16);
    t16 = (t0 + 4644U);
    t18 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t15, t14, t17, t16);
    if (t18 == 1)
        goto LAB22;

LAB23:    t13 = (unsigned char)0;

LAB24:    t1 = t13;

LAB18:    if (t1 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 776U);
    t4 = *((char **)t3);
    t3 = (t0 + 2856);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB3:    t3 = (t0 + 2660);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng0);
    t24 = (t0 + 592U);
    t25 = *((char **)t24);
    t24 = (t0 + 2856);
    t26 = (t24 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t8 = (t0 + 684U);
    t9 = *((char **)t8);
    t8 = (t0 + 4628U);
    t10 = (t0 + 776U);
    t11 = *((char **)t10);
    t10 = (t0 + 4644U);
    t12 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t9, t8, t11, t10);
    t2 = t12;
    goto LAB10;

LAB11:    t19 = (t0 + 776U);
    t20 = *((char **)t19);
    t19 = (t0 + 4644U);
    t21 = (t0 + 684U);
    t22 = *((char **)t21);
    t21 = (t0 + 4628U);
    t23 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t20, t19, t22, t21);
    t13 = t23;
    goto LAB13;

LAB14:    xsi_set_current_line(72, ng0);
    t24 = (t0 + 684U);
    t25 = *((char **)t24);
    t24 = (t0 + 2856);
    t26 = (t24 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB3;

LAB16:    t1 = (unsigned char)1;
    goto LAB18;

LAB19:    t8 = (t0 + 592U);
    t9 = *((char **)t8);
    t8 = (t0 + 4612U);
    t10 = (t0 + 776U);
    t11 = *((char **)t10);
    t10 = (t0 + 4644U);
    t12 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t9, t8, t11, t10);
    t2 = t12;
    goto LAB21;

LAB22:    t19 = (t0 + 776U);
    t20 = *((char **)t19);
    t19 = (t0 + 4644U);
    t21 = (t0 + 592U);
    t22 = *((char **)t21);
    t21 = (t0 + 4612U);
    t23 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t20, t19, t22, t21);
    t13 = t23;
    goto LAB24;

}

static void work_a_1810650608_3212880686_p_5(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(80, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t3 = (t0 + 4612U);
    t5 = (t0 + 684U);
    t6 = *((char **)t5);
    t5 = (t0 + 4628U);
    t7 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t4, t3, t6, t5);
    if (t7 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 592U);
    t15 = *((char **)t14);
    t14 = (t0 + 4612U);
    t16 = (t0 + 776U);
    t17 = *((char **)t16);
    t16 = (t0 + 4644U);
    t18 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t15, t14, t17, t16);
    if (t18 == 1)
        goto LAB11;

LAB12:    t13 = (unsigned char)0;

LAB13:    t1 = t13;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t3 = (t0 + 684U);
    t4 = *((char **)t3);
    t3 = (t0 + 4628U);
    t5 = (t0 + 592U);
    t6 = *((char **)t5);
    t5 = (t0 + 4612U);
    t7 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t4, t3, t6, t5);
    if (t7 == 1)
        goto LAB19;

LAB20:    t2 = (unsigned char)0;

LAB21:    if (t2 == 1)
        goto LAB16;

LAB17:    t14 = (t0 + 684U);
    t15 = *((char **)t14);
    t14 = (t0 + 4628U);
    t16 = (t0 + 776U);
    t17 = *((char **)t16);
    t16 = (t0 + 4644U);
    t18 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t15, t14, t17, t16);
    if (t18 == 1)
        goto LAB22;

LAB23:    t13 = (unsigned char)0;

LAB24:    t1 = t13;

LAB18:    if (t1 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(85, ng0);
    t3 = (t0 + 776U);
    t4 = *((char **)t3);
    t3 = (t0 + 2892);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    t8 = (t6 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB3:    t3 = (t0 + 2668);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(81, ng0);
    t24 = (t0 + 592U);
    t25 = *((char **)t24);
    t24 = (t0 + 2892);
    t26 = (t24 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t8 = (t0 + 592U);
    t9 = *((char **)t8);
    t8 = (t0 + 4612U);
    t10 = (t0 + 776U);
    t11 = *((char **)t10);
    t10 = (t0 + 4644U);
    t12 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t9, t8, t11, t10);
    t2 = t12;
    goto LAB10;

LAB11:    t19 = (t0 + 592U);
    t20 = *((char **)t19);
    t19 = (t0 + 4612U);
    t21 = (t0 + 684U);
    t22 = *((char **)t21);
    t21 = (t0 + 4628U);
    t23 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t20, t19, t22, t21);
    t13 = t23;
    goto LAB13;

LAB14:    xsi_set_current_line(83, ng0);
    t24 = (t0 + 684U);
    t25 = *((char **)t24);
    t24 = (t0 + 2892);
    t26 = (t24 + 32U);
    t27 = *((char **)t26);
    t28 = (t27 + 40U);
    t29 = *((char **)t28);
    memcpy(t29, t25, 8U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB3;

LAB16:    t1 = (unsigned char)1;
    goto LAB18;

LAB19:    t8 = (t0 + 684U);
    t9 = *((char **)t8);
    t8 = (t0 + 4628U);
    t10 = (t0 + 776U);
    t11 = *((char **)t10);
    t10 = (t0 + 4644U);
    t12 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t9, t8, t11, t10);
    t2 = t12;
    goto LAB21;

LAB22:    t19 = (t0 + 684U);
    t20 = *((char **)t19);
    t19 = (t0 + 4628U);
    t21 = (t0 + 592U);
    t22 = *((char **)t21);
    t21 = (t0 + 4612U);
    t23 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t20, t19, t22, t21);
    t13 = t23;
    goto LAB24;

}


extern void work_a_1810650608_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1810650608_3212880686_p_0,(void *)work_a_1810650608_3212880686_p_1,(void *)work_a_1810650608_3212880686_p_2,(void *)work_a_1810650608_3212880686_p_3,(void *)work_a_1810650608_3212880686_p_4,(void *)work_a_1810650608_3212880686_p_5};
	xsi_register_didat("work_a_1810650608_3212880686", "isim/Partial_Exam_A01206268_SIM_isim_beh.exe.sim/work/a_1810650608_3212880686.didat");
	xsi_register_executes(pe);
}
