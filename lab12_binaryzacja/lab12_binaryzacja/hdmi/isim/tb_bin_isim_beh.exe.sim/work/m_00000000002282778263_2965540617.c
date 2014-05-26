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
static const char *ng0 = "D:/JiTPS/AdamMichna/lab12_binaryzacja/lab12_binaryzacja/hdmi/tb_src/hdmi_in.v";
static int ng1[] = {1, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {0, 0};
static const char *ng5 = "reka.ppm";
static const char *ng6 = "rb";
static int ng7[] = {13, 0};



static void Initial_49_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 7456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);

LAB4:    xsi_set_current_line(51, ng0);

LAB5:    t2 = ((char*)((ng1)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t7 != 0);
    if (t8 > 0)
        goto LAB6;

LAB7:
LAB1:    return;
LAB6:    xsi_set_current_line(52, ng0);

LAB8:    xsi_set_current_line(53, ng0);
    t9 = (t0 + 7264);
    xsi_process_wait(t9, 1000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(53, ng0);
    t10 = ((char*)((ng2)));
    t11 = (t0 + 3336);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 7264);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng3)));
    t9 = (t0 + 3336);
    xsi_vlogvar_assign_value(t9, t3, 0, 0, 1);
    goto LAB5;

}

static void Always_61_1(char *t0)
{
    char t8[8];
    char t10[8];
    char t32[8];
    char t54[8];
    char t62[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;

LAB0:    t1 = (t0 + 7704U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 10008);
    *((int *)t2) = 1;
    t3 = (t0 + 7736);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(62, ng0);

LAB5:    xsi_set_current_line(63, ng0);
    t4 = (t0 + 4616);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 11, t7, 32);
    t9 = (t0 + 4616);
    xsi_vlogvar_wait_assign_value(t9, t8, 0, 0, 11, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4136);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 472);
    t6 = *((char **)t5);
    t5 = (t0 + 608);
    t7 = *((char **)t5);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 32, t7, 32);
    memset(t10, 0, 8);
    t5 = (t4 + 4);
    t9 = (t8 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t8);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t9);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t9);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t10) = 1;

LAB9:    t24 = (t10 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t10);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 472);
    t6 = *((char **)t5);
    t5 = (t0 + 608);
    t7 = *((char **)t5);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 32, t7, 32);
    t5 = (t0 + 880);
    t9 = *((char **)t5);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t8, 32, t9, 32);
    memset(t32, 0, 8);
    t5 = (t4 + 4);
    t23 = (t10 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t10);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t23);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t23);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB17;

LAB14:    if (t20 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t32) = 1;

LAB17:    t30 = (t32 + 4);
    t25 = *((unsigned int *)t30);
    t26 = (~(t25));
    t27 = *((unsigned int *)t32);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB18;

LAB19:
LAB20:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 472);
    t6 = *((char **)t5);
    memset(t8, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB23;

LAB22:    t7 = (t6 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB23;

LAB26:    if (*((unsigned int *)t4) < *((unsigned int *)t6))
        goto LAB24;

LAB25:    t23 = (t8 + 4);
    t11 = *((unsigned int *)t23);
    t12 = (~(t11));
    t13 = *((unsigned int *)t8);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4296);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB29:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1016);
    t6 = *((char **)t5);
    memset(t8, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB31;

LAB30:    t7 = (t6 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB31;

LAB34:    if (*((unsigned int *)t4) < *((unsigned int *)t6))
        goto LAB32;

LAB33:    t23 = (t8 + 4);
    t11 = *((unsigned int *)t23);
    t12 = (~(t11));
    t13 = *((unsigned int *)t8);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4456);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB37:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB41;

LAB38:    if (t20 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t8) = 1;

LAB41:    memset(t10, 0, 8);
    t23 = (t8 + 4);
    t25 = *((unsigned int *)t23);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t23) != 0)
        goto LAB44;

LAB45:    t30 = (t10 + 4);
    t34 = *((unsigned int *)t10);
    t35 = *((unsigned int *)t30);
    t36 = (t34 || t35);
    if (t36 > 0)
        goto LAB46;

LAB47:    memcpy(t62, t10, 8);

LAB48:    t94 = (t62 + 4);
    t95 = *((unsigned int *)t94);
    t96 = (~(t95));
    t97 = *((unsigned int *)t62);
    t98 = (t97 & t96);
    t99 = (t98 != 0);
    if (t99 > 0)
        goto LAB60;

LAB61:    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB62:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 4616);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 472);
    t6 = *((char **)t5);
    t5 = (t0 + 608);
    t7 = *((char **)t5);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 32, t7, 32);
    t5 = (t0 + 880);
    t9 = *((char **)t5);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t8, 32, t9, 32);
    t5 = (t0 + 744);
    t23 = *((char **)t5);
    memset(t32, 0, 8);
    xsi_vlog_unsigned_add(t32, 32, t10, 32, t23, 32);
    memset(t54, 0, 8);
    t5 = (t4 + 4);
    t24 = (t32 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t32);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t24);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t24);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB66;

LAB63:    if (t20 != 0)
        goto LAB65;

LAB64:    *((unsigned int *)t54) = 1;

LAB66:    t31 = (t54 + 4);
    t25 = *((unsigned int *)t31);
    t26 = (~(t25));
    t27 = *((unsigned int *)t54);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB67;

LAB68:
LAB69:    goto LAB2;

LAB8:    t23 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(67, ng0);

LAB13:    xsi_set_current_line(68, ng0);
    t30 = ((char*)((ng2)));
    t31 = (t0 + 3816);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 1, 0LL);
    goto LAB12;

LAB16:    t24 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(70, ng0);

LAB21:    xsi_set_current_line(71, ng0);
    t31 = ((char*)((ng3)));
    t33 = (t0 + 3816);
    xsi_vlogvar_wait_assign_value(t33, t31, 0, 0, 1, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB20;

LAB23:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB25;

LAB24:    *((unsigned int *)t8) = 1;
    goto LAB25;

LAB27:    xsi_set_current_line(76, ng0);
    t24 = ((char*)((ng3)));
    t30 = (t0 + 4296);
    xsi_vlogvar_wait_assign_value(t30, t24, 0, 0, 1, 0LL);
    goto LAB29;

LAB31:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB33;

LAB32:    *((unsigned int *)t8) = 1;
    goto LAB33;

LAB35:    xsi_set_current_line(81, ng0);
    t24 = ((char*)((ng3)));
    t30 = (t0 + 4456);
    xsi_vlogvar_wait_assign_value(t30, t24, 0, 0, 1, 0LL);
    goto LAB37;

LAB40:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t10) = 1;
    goto LAB45;

LAB44:    t24 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB45;

LAB46:    t31 = (t0 + 4296);
    t33 = (t31 + 56U);
    t37 = *((char **)t33);
    t38 = ((char*)((ng3)));
    memset(t32, 0, 8);
    t39 = (t37 + 4);
    t40 = (t38 + 4);
    t41 = *((unsigned int *)t37);
    t42 = *((unsigned int *)t38);
    t43 = (t41 ^ t42);
    t44 = *((unsigned int *)t39);
    t45 = *((unsigned int *)t40);
    t46 = (t44 ^ t45);
    t47 = (t43 | t46);
    t48 = *((unsigned int *)t39);
    t49 = *((unsigned int *)t40);
    t50 = (t48 | t49);
    t51 = (~(t50));
    t52 = (t47 & t51);
    if (t52 != 0)
        goto LAB52;

LAB49:    if (t50 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t32) = 1;

LAB52:    memset(t54, 0, 8);
    t55 = (t32 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t32);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t55) != 0)
        goto LAB55;

LAB56:    t63 = *((unsigned int *)t10);
    t64 = *((unsigned int *)t54);
    t65 = (t63 & t64);
    *((unsigned int *)t62) = t65;
    t66 = (t10 + 4);
    t67 = (t54 + 4);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t66);
    t70 = *((unsigned int *)t67);
    t71 = (t69 | t70);
    *((unsigned int *)t68) = t71;
    t72 = *((unsigned int *)t68);
    t73 = (t72 != 0);
    if (t73 == 1)
        goto LAB57;

LAB58:
LAB59:    goto LAB48;

LAB51:    t53 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB52;

LAB53:    *((unsigned int *)t54) = 1;
    goto LAB56;

LAB55:    t61 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB56;

LAB57:    t74 = *((unsigned int *)t62);
    t75 = *((unsigned int *)t68);
    *((unsigned int *)t62) = (t74 | t75);
    t76 = (t10 + 4);
    t77 = (t54 + 4);
    t78 = *((unsigned int *)t10);
    t79 = (~(t78));
    t80 = *((unsigned int *)t76);
    t81 = (~(t80));
    t82 = *((unsigned int *)t54);
    t83 = (~(t82));
    t84 = *((unsigned int *)t77);
    t85 = (~(t84));
    t86 = (t79 & t81);
    t87 = (t83 & t85);
    t88 = (~(t86));
    t89 = (~(t87));
    t90 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t90 & t88);
    t91 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t91 & t89);
    t92 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t92 & t88);
    t93 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t93 & t89);
    goto LAB59;

LAB60:    xsi_set_current_line(86, ng0);
    t100 = ((char*)((ng3)));
    t101 = (t0 + 3976);
    xsi_vlogvar_wait_assign_value(t101, t100, 0, 0, 1, 0LL);
    goto LAB62;

LAB65:    t30 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB66;

LAB67:    xsi_set_current_line(91, ng0);

LAB70:    xsi_set_current_line(92, ng0);
    t33 = ((char*)((ng4)));
    t37 = (t0 + 4616);
    xsi_vlogvar_wait_assign_value(t37, t33, 0, 0, 11, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3496);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB69;

}

static void Always_99_2(char *t0)
{
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 7952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 10024);
    *((int *)t2) = 1;
    t3 = (t0 + 7984);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(100, ng0);

LAB5:    xsi_set_current_line(101, ng0);
    t4 = (t0 + 3976);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(102, ng0);

LAB9:    xsi_set_current_line(103, ng0);
    t13 = (t0 + 5416);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((int *)t16) = xsi_vlogfile_fgetc(*((unsigned int *)t15));
    t17 = (t16 + 4);
    *((int *)t17) = 0;
    t18 = (t0 + 4936);
    xsi_vlogvar_assign_value(t18, t16, 0, 0, 8);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 5416);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    *((int *)t16) = xsi_vlogfile_fgetc(*((unsigned int *)t4));
    t5 = (t16 + 4);
    *((int *)t5) = 0;
    t6 = (t0 + 5096);
    xsi_vlogvar_assign_value(t6, t16, 0, 0, 8);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 5416);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    *((int *)t16) = xsi_vlogfile_fgetc(*((unsigned int *)t4));
    t5 = (t16 + 4);
    *((int *)t5) = 0;
    t6 = (t0 + 5256);
    xsi_vlogvar_assign_value(t6, t16, 0, 0, 8);
    goto LAB8;

}

static void Always_113_3(char *t0)
{
    char t8[8];
    char t10[8];
    char t32[8];
    char t34[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t33;
    char *t35;

LAB0:    t1 = (t0 + 8200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 10040);
    *((int *)t2) = 1;
    t3 = (t0 + 8232);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(114, ng0);

LAB5:    xsi_set_current_line(115, ng0);
    t4 = (t0 + 4776);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 11, t7, 32);
    t9 = (t0 + 4776);
    xsi_vlogvar_wait_assign_value(t9, t8, 0, 0, 11, 0LL);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1016);
    t6 = *((char **)t5);
    t5 = (t0 + 1152);
    t7 = *((char **)t5);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 32, t7, 32);
    memset(t10, 0, 8);
    t5 = (t4 + 4);
    t9 = (t8 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t8);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t9);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t9);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t10) = 1;

LAB9:    t24 = (t10 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t10);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 4776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1016);
    t6 = *((char **)t5);
    t5 = (t0 + 1152);
    t7 = *((char **)t5);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 32, t7, 32);
    t5 = (t0 + 1424);
    t9 = *((char **)t5);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t8, 32, t9, 32);
    memset(t32, 0, 8);
    t5 = (t4 + 4);
    t23 = (t10 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t10);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t23);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t23);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB21;

LAB18:    if (t20 != 0)
        goto LAB20;

LAB19:    *((unsigned int *)t32) = 1;

LAB21:    t30 = (t32 + 4);
    t25 = *((unsigned int *)t30);
    t26 = (~(t25));
    t27 = *((unsigned int *)t32);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB22;

LAB23:
LAB24:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 4776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1016);
    t6 = *((char **)t5);
    t5 = (t0 + 1152);
    t7 = *((char **)t5);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 32, t7, 32);
    t5 = (t0 + 1424);
    t9 = *((char **)t5);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t8, 32, t9, 32);
    t5 = (t0 + 1288);
    t23 = *((char **)t5);
    memset(t32, 0, 8);
    xsi_vlog_unsigned_add(t32, 32, t10, 32, t23, 32);
    memset(t34, 0, 8);
    t5 = (t4 + 4);
    t24 = (t32 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t32);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t24);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t24);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB28;

LAB25:    if (t20 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t34) = 1;

LAB28:    t31 = (t34 + 4);
    t25 = *((unsigned int *)t31);
    t26 = (~(t25));
    t27 = *((unsigned int *)t34);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB29;

LAB30:
LAB31:    goto LAB2;

LAB8:    t23 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(117, ng0);

LAB13:    xsi_set_current_line(118, ng0);
    t30 = ((char*)((ng2)));
    t31 = (t0 + 3656);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 1, 0LL);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 6536);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 8, t5, 32);
    t6 = (t0 + 6536);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 8);
    xsi_set_current_line(122, ng0);
    *((int *)t8) = xsi_vlogfile_file_open_of_cname_ctype(ng5, ng6);
    t2 = (t8 + 4);
    *((int *)t2) = 0;
    t3 = (t0 + 5416);
    xsi_vlogvar_assign_value(t3, t8, 0, 0, 32);
    xsi_set_current_line(125, ng0);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5576);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB14:    t2 = (t0 + 5576);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t4, 32, t5, 32);
    t6 = (t8 + 4);
    t11 = *((unsigned int *)t6);
    t12 = (~(t11));
    t13 = *((unsigned int *)t8);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB15;

LAB16:    goto LAB12;

LAB15:    xsi_set_current_line(126, ng0);

LAB17:    xsi_set_current_line(127, ng0);
    t7 = (t0 + 5416);
    t9 = (t7 + 56U);
    t23 = *((char **)t9);
    *((int *)t10) = xsi_vlogfile_fgetc(*((unsigned int *)t23));
    t24 = (t10 + 4);
    *((int *)t24) = 0;
    t30 = (t0 + 5736);
    xsi_vlogvar_assign_value(t30, t10, 0, 0, 32);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 5576);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t4, 32, t5, 32);
    t6 = (t0 + 5576);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 32);
    goto LAB14;

LAB20:    t24 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB21;

LAB22:    xsi_set_current_line(131, ng0);
    t31 = ((char*)((ng3)));
    t33 = (t0 + 3656);
    xsi_vlogvar_wait_assign_value(t33, t31, 0, 0, 1, 0LL);
    goto LAB24;

LAB27:    t30 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(132, ng0);
    t33 = ((char*)((ng4)));
    t35 = (t0 + 4776);
    xsi_vlogvar_wait_assign_value(t35, t33, 0, 0, 11, 0LL);
    goto LAB31;

}

static void Cont_136_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 8448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 4936);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 10056);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_137_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 8696U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 5096);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10280);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 10072);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_138_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 8944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 5256);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10344);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 10088);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_140_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 9192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 4136);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10408);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 10104);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_141_8(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 9440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 3816);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10472);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 10120);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_142_9(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 9688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 3656);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10536);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 10136);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000002282778263_2965540617_init()
{
	static char *pe[] = {(void *)Initial_49_0,(void *)Always_61_1,(void *)Always_99_2,(void *)Always_113_3,(void *)Cont_136_4,(void *)Cont_137_5,(void *)Cont_138_6,(void *)Cont_140_7,(void *)Cont_141_8,(void *)Cont_142_9};
	xsi_register_didat("work_m_00000000002282778263_2965540617", "isim/tb_bin_isim_beh.exe.sim/work/m_00000000002282778263_2965540617.didat");
	xsi_register_executes(pe);
}
