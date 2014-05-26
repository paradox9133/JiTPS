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
static const char *ng0 = "D:/JiTPS/AdamMichna/lab12_binaryzacja/lab12_binaryzacja/hdmi/tb_src/hdmi_out.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {779120749, 0};
static int ng4[] = {10, 0};
static unsigned int ng5[] = {48U, 0U};
static int ng6[] = {1869968479, 0};
static const char *ng7 = "wb";
static const char *ng8 = "out%d.ppm saved";
static const char *ng9 = "P6%c64 64%c255\n";
static int ng10[] = {1, 0};
static const char *ng11 = "%c";



static void Initial_21_0(char *t0)
{

LAB0:    xsi_set_current_line(22, ng0);

LAB2:
LAB1:    return;
}

static void Always_26_1(char *t0)
{
    char t6[8];
    char t20[8];
    char t36[8];
    char t52[8];
    char t60[8];
    char t101[32];
    char t102[8];
    char t113[8];
    char t115[8];
    char t116[8];
    char t129[8];
    char t131[8];
    char t133[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
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
    char *t51;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    char *t100;
    char *t103;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;
    char *t114;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t128;
    char *t130;
    char *t132;
    char *t134;
    char *t135;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 3736);
    *((int *)t2) = 1;
    t3 = (t0 + 3448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB9;

LAB6:    if (t16 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    memset(t20, 0, 8);
    t21 = (t6 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t6);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t21) != 0)
        goto LAB12;

LAB13:    t28 = (t20 + 4);
    t29 = *((unsigned int *)t20);
    t30 = *((unsigned int *)t28);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB14;

LAB15:    memcpy(t60, t20, 8);

LAB16:    t92 = (t60 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (~(t93));
    t95 = *((unsigned int *)t60);
    t96 = (t95 & t94);
    t97 = (t96 != 0);
    if (t97 > 0)
        goto LAB28;

LAB29:
LAB30:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB35;

LAB32:    if (t16 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t6) = 1;

LAB35:    memset(t20, 0, 8);
    t21 = (t6 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t6);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t21) != 0)
        goto LAB38;

LAB39:    t28 = (t20 + 4);
    t29 = *((unsigned int *)t20);
    t30 = *((unsigned int *)t28);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB40;

LAB41:    memcpy(t60, t20, 8);

LAB42:    t92 = (t60 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (~(t93));
    t95 = *((unsigned int *)t60);
    t96 = (t95 & t94);
    t97 = (t96 != 0);
    if (t97 > 0)
        goto LAB54;

LAB55:    xsi_set_current_line(48, ng0);

LAB58:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB59;

LAB60:
LAB61:
LAB56:    goto LAB2;

LAB8:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t20) = 1;
    goto LAB13;

LAB12:    t27 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB13;

LAB14:    t32 = (t0 + 2248);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng2)));
    memset(t36, 0, 8);
    t37 = (t34 + 4);
    t38 = (t35 + 4);
    t39 = *((unsigned int *)t34);
    t40 = *((unsigned int *)t35);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t37);
    t47 = *((unsigned int *)t38);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB20;

LAB17:    if (t48 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t36) = 1;

LAB20:    memset(t52, 0, 8);
    t53 = (t36 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t36);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t53) != 0)
        goto LAB23;

LAB24:    t61 = *((unsigned int *)t20);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t20 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t51 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t52) = 1;
    goto LAB24;

LAB23:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t20 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t20);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB27;

LAB28:    xsi_set_current_line(31, ng0);

LAB31:    xsi_set_current_line(32, ng0);
    t98 = (t0 + 1928);
    t99 = (t98 + 56U);
    t100 = *((char **)t99);
    xsi_vlogfile_fclose(*((unsigned int *)t100));
    goto LAB30;

LAB34:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB35;

LAB36:    *((unsigned int *)t20) = 1;
    goto LAB39;

LAB38:    t27 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB39;

LAB40:    t32 = (t0 + 2248);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng1)));
    memset(t36, 0, 8);
    t37 = (t34 + 4);
    t38 = (t35 + 4);
    t39 = *((unsigned int *)t34);
    t40 = *((unsigned int *)t35);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t37);
    t47 = *((unsigned int *)t38);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB46;

LAB43:    if (t48 != 0)
        goto LAB45;

LAB44:    *((unsigned int *)t36) = 1;

LAB46:    memset(t52, 0, 8);
    t53 = (t36 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t36);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t53) != 0)
        goto LAB49;

LAB50:    t61 = *((unsigned int *)t20);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t20 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB42;

LAB45:    t51 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB46;

LAB47:    *((unsigned int *)t52) = 1;
    goto LAB50;

LAB49:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB50;

LAB51:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t20 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t20);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB53;

LAB54:    xsi_set_current_line(37, ng0);

LAB57:    xsi_set_current_line(39, ng0);
    t98 = ((char*)((ng3)));
    t99 = (t0 + 2088);
    t100 = (t99 + 56U);
    t103 = *((char **)t100);
    memset(t102, 0, 8);
    t104 = (t102 + 4);
    t105 = (t103 + 4);
    t106 = *((unsigned int *)t103);
    t107 = (t106 >> 0);
    *((unsigned int *)t102) = t107;
    t108 = *((unsigned int *)t105);
    t109 = (t108 >> 0);
    *((unsigned int *)t104) = t109;
    t110 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t110 & 63U);
    t111 = *((unsigned int *)t104);
    *((unsigned int *)t104) = (t111 & 63U);
    t112 = ((char*)((ng4)));
    memset(t113, 0, 8);
    xsi_vlog_unsigned_mod(t113, 32, t102, 32, t112, 32);
    t114 = ((char*)((ng5)));
    memset(t115, 0, 8);
    xsi_vlog_unsigned_add(t115, 32, t113, 32, t114, 32);
    t117 = (t0 + 2088);
    t118 = (t117 + 56U);
    t119 = *((char **)t118);
    memset(t116, 0, 8);
    t120 = (t116 + 4);
    t121 = (t119 + 4);
    t122 = *((unsigned int *)t119);
    t123 = (t122 >> 0);
    *((unsigned int *)t116) = t123;
    t124 = *((unsigned int *)t121);
    t125 = (t124 >> 0);
    *((unsigned int *)t120) = t125;
    t126 = *((unsigned int *)t116);
    *((unsigned int *)t116) = (t126 & 63U);
    t127 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t127 & 63U);
    t128 = ((char*)((ng4)));
    memset(t129, 0, 8);
    xsi_vlog_unsigned_divide(t129, 32, t116, 32, t128, 32);
    t130 = ((char*)((ng5)));
    memset(t131, 0, 8);
    xsi_vlog_unsigned_add(t131, 32, t129, 32, t130, 32);
    t132 = ((char*)((ng6)));
    xsi_vlogtype_concat(t101, 128, 128, 4U, t132, 32, t131, 32, t115, 32, t98, 32);
    *((int *)t133) = xsi_vlogfile_file_open_of_valname_ctype(t101, 128, ng7);
    t134 = (t133 + 4);
    *((int *)t134) = 0;
    t135 = (t0 + 1928);
    xsi_vlogvar_assign_value(t135, t133, 0, 0, 32);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng8, 2, t0, (char)118, t4, 8);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    t19 = ((char*)((ng4)));
    xsi_vlogfile_fwrite(*((unsigned int *)t4), 0, 0, 1, ng9, 3, t0, (char)119, t5, 32, (char)119, t19, 32);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 8, t5, 32);
    t19 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t19, t6, 0, 0, 8, 0LL);
    goto LAB56;

LAB59:    xsi_set_current_line(50, ng0);

LAB62:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t19 = *((char **)t5);
    t21 = (t0 + 1528U);
    t27 = *((char **)t21);
    memset(t20, 0, 8);
    t21 = (t20 + 4);
    t28 = (t27 + 4);
    t12 = *((unsigned int *)t27);
    t13 = (t12 >> 16);
    *((unsigned int *)t20) = t13;
    t14 = *((unsigned int *)t28);
    t15 = (t14 >> 16);
    *((unsigned int *)t21) = t15;
    t16 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t16 & 255U);
    t17 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t17 & 255U);
    xsi_vlogtype_concat(t6, 8, 8, 1U, t20, 8);
    xsi_vlogfile_fwrite(*((unsigned int *)t19), 0, 0, 1, ng11, 2, t0, (char)118, t6, 8);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1528U);
    t19 = *((char **)t5);
    memset(t20, 0, 8);
    t5 = (t20 + 4);
    t21 = (t19 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (t7 >> 8);
    *((unsigned int *)t20) = t8;
    t9 = *((unsigned int *)t21);
    t10 = (t9 >> 8);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t11 & 255U);
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 255U);
    xsi_vlogtype_concat(t6, 8, 8, 1U, t20, 8);
    xsi_vlogfile_fwrite(*((unsigned int *)t4), 0, 0, 1, ng11, 2, t0, (char)118, t6, 8);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1528U);
    t19 = *((char **)t5);
    memset(t20, 0, 8);
    t5 = (t20 + 4);
    t21 = (t19 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (t7 >> 0);
    *((unsigned int *)t20) = t8;
    t9 = *((unsigned int *)t21);
    t10 = (t9 >> 0);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t11 & 255U);
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 255U);
    xsi_vlogtype_concat(t6, 8, 8, 1U, t20, 8);
    xsi_vlogfile_fwrite(*((unsigned int *)t4), 0, 0, 1, ng11, 2, t0, (char)118, t6, 8);
    goto LAB61;

}


extern void work_m_00000000001552285905_1520396938_init()
{
	static char *pe[] = {(void *)Initial_21_0,(void *)Always_26_1};
	xsi_register_didat("work_m_00000000001552285905_1520396938", "isim/tb_bin_isim_beh.exe.sim/work/m_00000000001552285905_1520396938.didat");
	xsi_register_executes(pe);
}
