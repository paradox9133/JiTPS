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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/JiTPS/AdamMichna/hdmi/hdmi/src/tx/convert_30to15_fifo.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {8U, 0U};
static unsigned int ng10[] = {9U, 0U};
static unsigned int ng11[] = {10U, 0U};
static unsigned int ng12[] = {11U, 0U};
static unsigned int ng13[] = {12U, 0U};
static unsigned int ng14[] = {13U, 0U};
static unsigned int ng15[] = {14U, 0U};
static unsigned int ng16[] = {15U, 0U};



static void Always_36_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 7104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 8416);
    *((int *)t2) = 1;
    t3 = (t0 + 7136);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 4024U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB35;

LAB36:
LAB38:
LAB37:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6024);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB39:    goto LAB2;

LAB7:    xsi_set_current_line(38, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 6024);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 4);
    goto LAB39;

LAB9:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB11:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB13:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB15:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB17:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB19:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB21:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB23:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB25:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB27:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB29:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB31:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB33:    xsi_set_current_line(51, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB35:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 6024);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

}

static void Always_81_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 7352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 8432);
    *((int *)t2) = 1;
    t3 = (t0 + 7384);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(81, ng0);

LAB5:    xsi_set_current_line(82, ng0);
    t4 = (t0 + 4184U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB35;

LAB36:
LAB38:
LAB37:    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6184);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB39:    goto LAB2;

LAB7:    xsi_set_current_line(83, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 6184);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 4);
    goto LAB39;

LAB9:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB11:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB13:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB15:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB17:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB19:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB21:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB23:    xsi_set_current_line(91, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB25:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB27:    xsi_set_current_line(93, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB29:    xsi_set_current_line(94, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB31:    xsi_set_current_line(95, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB33:    xsi_set_current_line(96, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

LAB35:    xsi_set_current_line(97, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 6184);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB39;

}

static void Cont_150_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t34[8];
    char t48[8];
    char *t1;
    char *t2;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;

LAB0:    t1 = (t0 + 7600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(150, ng0);
    t2 = (t0 + 4984U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t6 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t12 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t12) = 1;

LAB7:    t13 = (t5 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t5) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB9;

LAB8:    t21 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    memset(t4, 0, 8);
    t23 = (t5 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t5);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t23) != 0)
        goto LAB12;

LAB13:    t30 = (t4 + 4);
    t31 = *((unsigned int *)t4);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB14;

LAB15:    t44 = *((unsigned int *)t4);
    t45 = (~(t44));
    t46 = *((unsigned int *)t30);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t30) > 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t4) > 0)
        goto LAB20;

LAB21:    memcpy(t3, t48, 8);

LAB22:    t58 = (t0 + 8544);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    memset(t62, 0, 8);
    t63 = 32767U;
    t64 = t63;
    t65 = (t3 + 4);
    t66 = *((unsigned int *)t3);
    t63 = (t63 & t66);
    t67 = *((unsigned int *)t65);
    t64 = (t64 & t67);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t69 | t63);
    t70 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t70 | t64);
    xsi_driver_vfirst_trans(t58, 0, 14);
    t71 = (t0 + 8448);
    *((int *)t71) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB9:    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB8;

LAB10:    *((unsigned int *)t4) = 1;
    goto LAB13;

LAB12:    t29 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB13;

LAB14:    t35 = (t0 + 5144U);
    t36 = *((char **)t35);
    memset(t34, 0, 8);
    t35 = (t34 + 4);
    t37 = (t36 + 4);
    t38 = *((unsigned int *)t36);
    t39 = (t38 >> 0);
    *((unsigned int *)t34) = t39;
    t40 = *((unsigned int *)t37);
    t41 = (t40 >> 0);
    *((unsigned int *)t35) = t41;
    t42 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t42 & 32767U);
    t43 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t43 & 32767U);
    goto LAB15;

LAB16:    t49 = (t0 + 5144U);
    t50 = *((char **)t49);
    memset(t48, 0, 8);
    t49 = (t48 + 4);
    t51 = (t50 + 4);
    t52 = *((unsigned int *)t50);
    t53 = (t52 >> 15);
    *((unsigned int *)t48) = t53;
    t54 = *((unsigned int *)t51);
    t55 = (t54 >> 15);
    *((unsigned int *)t49) = t55;
    t56 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t56 & 32767U);
    t57 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t57 & 32767U);
    goto LAB17;

LAB18:    xsi_vlog_unsigned_bit_combine(t3, 15, t34, 15, t48, 15);
    goto LAB22;

LAB20:    memcpy(t3, t34, 8);
    goto LAB22;

}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 7848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng2)));
    t3 = (t0 + 8608);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig2_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;

LAB0:    t1 = (t0 + 8096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4984U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t4 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 & 1U);
    if (t9 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t10 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t10) = 1;

LAB7:    t11 = (t3 + 4);
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (~(t13));
    *((unsigned int *)t3) = t14;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB9;

LAB8:    t19 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t19 & 1U);
    t20 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t20 & 1U);
    t21 = (t0 + 8672);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memset(t25, 0, 8);
    t26 = 1U;
    t27 = t26;
    t28 = (t3 + 4);
    t29 = *((unsigned int *)t3);
    t26 = (t26 & t29);
    t30 = *((unsigned int *)t28);
    t27 = (t27 & t30);
    t31 = (t25 + 4);
    t32 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t32 | t26);
    t33 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t33 | t27);
    xsi_driver_vfirst_trans(t21, 0, 0);
    t34 = (t0 + 8464);
    *((int *)t34) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t3) = 1;
    goto LAB7;

LAB9:    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t12);
    *((unsigned int *)t3) = (t15 | t16);
    t17 = *((unsigned int *)t11);
    t18 = *((unsigned int *)t12);
    *((unsigned int *)t11) = (t17 | t18);
    goto LAB8;

}


extern void work_m_00000000004281619233_3014189077_init()
{
	static char *pe[] = {(void *)Always_36_0,(void *)Always_81_1,(void *)Cont_150_2,(void *)implSig1_execute,(void *)implSig2_execute};
	xsi_register_didat("work_m_00000000004281619233_3014189077", "isim/hdmi_main_isim_beh.exe.sim/work/m_00000000004281619233_3014189077.didat");
	xsi_register_executes(pe);
}
