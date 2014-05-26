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
static const char *ng0 = "D:/JiTPS/AdamMichna/hdmi/hdmi/src/rx/phsaligner.v";
static unsigned int ng1[] = {852U, 0U};
static unsigned int ng2[] = {171U, 0U};
static unsigned int ng3[] = {340U, 0U};
static unsigned int ng4[] = {683U, 0U};
static unsigned int ng5[] = {0U, 0U};
static unsigned int ng6[] = {1U, 0U};
static unsigned int ng7[] = {4095U, 0U};
static unsigned int ng8[] = {127U, 0U};
static unsigned int ng9[] = {2U, 0U};
static unsigned int ng10[] = {8U, 0U};
static unsigned int ng11[] = {4U, 0U};
static unsigned int ng12[] = {16U, 0U};
static unsigned int ng13[] = {32U, 0U};



static void Always_76_0(char *t0)
{
    char t6[8];
    char t22[8];
    char t37[8];
    char t53[8];
    char t61[8];
    char t89[8];
    char t104[8];
    char t120[8];
    char t128[8];
    char t156[8];
    char t171[8];
    char t187[8];
    char t195[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
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
    unsigned int t19;
    unsigned int t20;
    char *t21;
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
    unsigned int t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
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
    unsigned int t51;
    char *t52;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    char *t142;
    char *t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    char *t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    char *t163;
    char *t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    char *t169;
    char *t170;
    char *t172;
    char *t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    char *t186;
    char *t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    char *t194;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    char *t199;
    char *t200;
    char *t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    char *t209;
    char *t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    int t214;
    unsigned int t215;
    unsigned int t216;
    unsigned int t217;
    int t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    char *t223;

LAB0:    t1 = (t0 + 7128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 9184);
    *((int *)t2) = 1;
    t3 = (t0 + 7160);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(76, ng0);

LAB5:    xsi_set_current_line(77, ng0);
    t4 = (t0 + 3408U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t23) != 0)
        goto LAB12;

LAB13:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = (!(t31));
    t33 = *((unsigned int *)t30);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB14;

LAB15:    memcpy(t61, t22, 8);

LAB16:    memset(t89, 0, 8);
    t90 = (t61 + 4);
    t91 = *((unsigned int *)t90);
    t92 = (~(t91));
    t93 = *((unsigned int *)t61);
    t94 = (t93 & t92);
    t95 = (t94 & 1U);
    if (t95 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t90) != 0)
        goto LAB30;

LAB31:    t97 = (t89 + 4);
    t98 = *((unsigned int *)t89);
    t99 = (!(t98));
    t100 = *((unsigned int *)t97);
    t101 = (t99 || t100);
    if (t101 > 0)
        goto LAB32;

LAB33:    memcpy(t128, t89, 8);

LAB34:    memset(t156, 0, 8);
    t157 = (t128 + 4);
    t158 = *((unsigned int *)t157);
    t159 = (~(t158));
    t160 = *((unsigned int *)t128);
    t161 = (t160 & t159);
    t162 = (t161 & 1U);
    if (t162 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t157) != 0)
        goto LAB48;

LAB49:    t164 = (t156 + 4);
    t165 = *((unsigned int *)t156);
    t166 = (!(t165));
    t167 = *((unsigned int *)t164);
    t168 = (t166 || t167);
    if (t168 > 0)
        goto LAB50;

LAB51:    memcpy(t195, t156, 8);

LAB52:    t223 = (t0 + 4288);
    xsi_vlogvar_wait_assign_value(t223, t195, 0, 0, 1, 1000LL);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4448);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 1000LL);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 4448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (~(t9));
    t11 = *((unsigned int *)t4);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB67;

LAB65:    if (*((unsigned int *)t5) == 0)
        goto LAB64;

LAB66:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;

LAB67:    t8 = (t0 + 4288);
    t21 = (t8 + 56U);
    t23 = *((char **)t21);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t23);
    t16 = (t14 & t15);
    *((unsigned int *)t22) = t16;
    t29 = (t6 + 4);
    t30 = (t23 + 4);
    t35 = (t22 + 4);
    t17 = *((unsigned int *)t29);
    t18 = *((unsigned int *)t30);
    t19 = (t17 | t18);
    *((unsigned int *)t35) = t19;
    t20 = *((unsigned int *)t35);
    t24 = (t20 != 0);
    if (t24 == 1)
        goto LAB68;

LAB69:
LAB70:    t39 = (t0 + 4608);
    xsi_vlogvar_wait_assign_value(t39, t22, 0, 0, 1, 1000LL);
    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t22) = 1;
    goto LAB13;

LAB12:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB13;

LAB14:    t35 = (t0 + 3408U);
    t36 = *((char **)t35);
    t35 = ((char*)((ng2)));
    memset(t37, 0, 8);
    t38 = (t36 + 4);
    t39 = (t35 + 4);
    t40 = *((unsigned int *)t36);
    t41 = *((unsigned int *)t35);
    t42 = (t40 ^ t41);
    t43 = *((unsigned int *)t38);
    t44 = *((unsigned int *)t39);
    t45 = (t43 ^ t44);
    t46 = (t42 | t45);
    t47 = *((unsigned int *)t38);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB20;

LAB17:    if (t49 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t37) = 1;

LAB20:    memset(t53, 0, 8);
    t54 = (t37 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (~(t55));
    t57 = *((unsigned int *)t37);
    t58 = (t57 & t56);
    t59 = (t58 & 1U);
    if (t59 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t54) != 0)
        goto LAB23;

LAB24:    t62 = *((unsigned int *)t22);
    t63 = *((unsigned int *)t53);
    t64 = (t62 | t63);
    *((unsigned int *)t61) = t64;
    t65 = (t22 + 4);
    t66 = (t53 + 4);
    t67 = (t61 + 4);
    t68 = *((unsigned int *)t65);
    t69 = *((unsigned int *)t66);
    t70 = (t68 | t69);
    *((unsigned int *)t67) = t70;
    t71 = *((unsigned int *)t67);
    t72 = (t71 != 0);
    if (t72 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t52 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t53) = 1;
    goto LAB24;

LAB23:    t60 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB24;

LAB25:    t73 = *((unsigned int *)t61);
    t74 = *((unsigned int *)t67);
    *((unsigned int *)t61) = (t73 | t74);
    t75 = (t22 + 4);
    t76 = (t53 + 4);
    t77 = *((unsigned int *)t75);
    t78 = (~(t77));
    t79 = *((unsigned int *)t22);
    t80 = (t79 & t78);
    t81 = *((unsigned int *)t76);
    t82 = (~(t81));
    t83 = *((unsigned int *)t53);
    t84 = (t83 & t82);
    t85 = (~(t80));
    t86 = (~(t84));
    t87 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t87 & t85);
    t88 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t88 & t86);
    goto LAB27;

LAB28:    *((unsigned int *)t89) = 1;
    goto LAB31;

LAB30:    t96 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t96) = 1;
    goto LAB31;

LAB32:    t102 = (t0 + 3408U);
    t103 = *((char **)t102);
    t102 = ((char*)((ng3)));
    memset(t104, 0, 8);
    t105 = (t103 + 4);
    t106 = (t102 + 4);
    t107 = *((unsigned int *)t103);
    t108 = *((unsigned int *)t102);
    t109 = (t107 ^ t108);
    t110 = *((unsigned int *)t105);
    t111 = *((unsigned int *)t106);
    t112 = (t110 ^ t111);
    t113 = (t109 | t112);
    t114 = *((unsigned int *)t105);
    t115 = *((unsigned int *)t106);
    t116 = (t114 | t115);
    t117 = (~(t116));
    t118 = (t113 & t117);
    if (t118 != 0)
        goto LAB38;

LAB35:    if (t116 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t104) = 1;

LAB38:    memset(t120, 0, 8);
    t121 = (t104 + 4);
    t122 = *((unsigned int *)t121);
    t123 = (~(t122));
    t124 = *((unsigned int *)t104);
    t125 = (t124 & t123);
    t126 = (t125 & 1U);
    if (t126 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t121) != 0)
        goto LAB41;

LAB42:    t129 = *((unsigned int *)t89);
    t130 = *((unsigned int *)t120);
    t131 = (t129 | t130);
    *((unsigned int *)t128) = t131;
    t132 = (t89 + 4);
    t133 = (t120 + 4);
    t134 = (t128 + 4);
    t135 = *((unsigned int *)t132);
    t136 = *((unsigned int *)t133);
    t137 = (t135 | t136);
    *((unsigned int *)t134) = t137;
    t138 = *((unsigned int *)t134);
    t139 = (t138 != 0);
    if (t139 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB34;

LAB37:    t119 = (t104 + 4);
    *((unsigned int *)t104) = 1;
    *((unsigned int *)t119) = 1;
    goto LAB38;

LAB39:    *((unsigned int *)t120) = 1;
    goto LAB42;

LAB41:    t127 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t127) = 1;
    goto LAB42;

LAB43:    t140 = *((unsigned int *)t128);
    t141 = *((unsigned int *)t134);
    *((unsigned int *)t128) = (t140 | t141);
    t142 = (t89 + 4);
    t143 = (t120 + 4);
    t144 = *((unsigned int *)t142);
    t145 = (~(t144));
    t146 = *((unsigned int *)t89);
    t147 = (t146 & t145);
    t148 = *((unsigned int *)t143);
    t149 = (~(t148));
    t150 = *((unsigned int *)t120);
    t151 = (t150 & t149);
    t152 = (~(t147));
    t153 = (~(t151));
    t154 = *((unsigned int *)t134);
    *((unsigned int *)t134) = (t154 & t152);
    t155 = *((unsigned int *)t134);
    *((unsigned int *)t134) = (t155 & t153);
    goto LAB45;

LAB46:    *((unsigned int *)t156) = 1;
    goto LAB49;

LAB48:    t163 = (t156 + 4);
    *((unsigned int *)t156) = 1;
    *((unsigned int *)t163) = 1;
    goto LAB49;

LAB50:    t169 = (t0 + 3408U);
    t170 = *((char **)t169);
    t169 = ((char*)((ng4)));
    memset(t171, 0, 8);
    t172 = (t170 + 4);
    t173 = (t169 + 4);
    t174 = *((unsigned int *)t170);
    t175 = *((unsigned int *)t169);
    t176 = (t174 ^ t175);
    t177 = *((unsigned int *)t172);
    t178 = *((unsigned int *)t173);
    t179 = (t177 ^ t178);
    t180 = (t176 | t179);
    t181 = *((unsigned int *)t172);
    t182 = *((unsigned int *)t173);
    t183 = (t181 | t182);
    t184 = (~(t183));
    t185 = (t180 & t184);
    if (t185 != 0)
        goto LAB56;

LAB53:    if (t183 != 0)
        goto LAB55;

LAB54:    *((unsigned int *)t171) = 1;

LAB56:    memset(t187, 0, 8);
    t188 = (t171 + 4);
    t189 = *((unsigned int *)t188);
    t190 = (~(t189));
    t191 = *((unsigned int *)t171);
    t192 = (t191 & t190);
    t193 = (t192 & 1U);
    if (t193 != 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t188) != 0)
        goto LAB59;

LAB60:    t196 = *((unsigned int *)t156);
    t197 = *((unsigned int *)t187);
    t198 = (t196 | t197);
    *((unsigned int *)t195) = t198;
    t199 = (t156 + 4);
    t200 = (t187 + 4);
    t201 = (t195 + 4);
    t202 = *((unsigned int *)t199);
    t203 = *((unsigned int *)t200);
    t204 = (t202 | t203);
    *((unsigned int *)t201) = t204;
    t205 = *((unsigned int *)t201);
    t206 = (t205 != 0);
    if (t206 == 1)
        goto LAB61;

LAB62:
LAB63:    goto LAB52;

LAB55:    t186 = (t171 + 4);
    *((unsigned int *)t171) = 1;
    *((unsigned int *)t186) = 1;
    goto LAB56;

LAB57:    *((unsigned int *)t187) = 1;
    goto LAB60;

LAB59:    t194 = (t187 + 4);
    *((unsigned int *)t187) = 1;
    *((unsigned int *)t194) = 1;
    goto LAB60;

LAB61:    t207 = *((unsigned int *)t195);
    t208 = *((unsigned int *)t201);
    *((unsigned int *)t195) = (t207 | t208);
    t209 = (t156 + 4);
    t210 = (t187 + 4);
    t211 = *((unsigned int *)t209);
    t212 = (~(t211));
    t213 = *((unsigned int *)t156);
    t214 = (t213 & t212);
    t215 = *((unsigned int *)t210);
    t216 = (~(t215));
    t217 = *((unsigned int *)t187);
    t218 = (t217 & t216);
    t219 = (~(t214));
    t220 = (~(t218));
    t221 = *((unsigned int *)t201);
    *((unsigned int *)t201) = (t221 & t219);
    t222 = *((unsigned int *)t201);
    *((unsigned int *)t201) = (t222 & t220);
    goto LAB63;

LAB64:    *((unsigned int *)t6) = 1;
    goto LAB67;

LAB68:    t25 = *((unsigned int *)t22);
    t26 = *((unsigned int *)t35);
    *((unsigned int *)t22) = (t25 | t26);
    t36 = (t6 + 4);
    t38 = (t23 + 4);
    t27 = *((unsigned int *)t6);
    t28 = (~(t27));
    t31 = *((unsigned int *)t36);
    t32 = (~(t31));
    t33 = *((unsigned int *)t23);
    t34 = (~(t33));
    t40 = *((unsigned int *)t38);
    t41 = (~(t40));
    t80 = (t28 & t32);
    t84 = (t34 & t41);
    t42 = (~(t80));
    t43 = (~(t84));
    t44 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t44 & t42);
    t45 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t45 & t43);
    t46 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t46 & t42);
    t47 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t47 & t43);
    goto LAB70;

}

static void Always_94_1(char *t0)
{
    char t15[8];
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

LAB0:    t1 = (t0 + 7376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 9200);
    *((int *)t2) = 1;
    t3 = (t0 + 7408);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(94, ng0);

LAB5:    xsi_set_current_line(95, ng0);
    t4 = (t0 + 4928);
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

LAB7:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 12, t4, 12, t5, 12);
    t6 = (t0 + 4768);
    xsi_vlogvar_wait_assign_value(t6, t15, 0, 0, 12, 1000LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(96, ng0);
    t13 = ((char*)((ng5)));
    t14 = (t0 + 4768);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, 0, 12, 1000LL);
    goto LAB8;

}

static void Always_102_2(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
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

LAB0:    t1 = (t0 + 7624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 9216);
    *((int *)t2) = 1;
    t3 = (t0 + 7656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(102, ng0);

LAB5:    xsi_set_current_line(103, ng0);
    t4 = (t0 + 4768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng7)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t24 = (t0 + 5088);
    xsi_vlogvar_wait_assign_value(t24, t8, 0, 0, 1, 1000LL);
    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

}

static void Always_118_3(char *t0)
{
    char t15[8];
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

LAB0:    t1 = (t0 + 7872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 9232);
    *((int *)t2) = 1;
    t3 = (t0 + 7904);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(118, ng0);

LAB5:    xsi_set_current_line(119, ng0);
    t4 = (t0 + 5408);
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

LAB7:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 5248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 7, t4, 7, t5, 7);
    t6 = (t0 + 5248);
    xsi_vlogvar_wait_assign_value(t6, t15, 0, 0, 7, 1000LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(120, ng0);
    t13 = ((char*)((ng5)));
    t14 = (t0 + 5248);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, 0, 7, 1000LL);
    goto LAB8;

}

static void Always_126_4(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
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

LAB0:    t1 = (t0 + 8120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 9248);
    *((int *)t2) = 1;
    t3 = (t0 + 8152);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(126, ng0);

LAB5:    xsi_set_current_line(127, ng0);
    t4 = (t0 + 5248);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng8)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t24 = (t0 + 5568);
    xsi_vlogvar_wait_assign_value(t24, t8, 0, 0, 1, 1000LL);
    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

}

static void Always_158_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 8368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(158, ng0);
    t2 = (t0 + 9264);
    *((int *)t2) = 1;
    t3 = (t0 + 8400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(158, ng0);

LAB5:    xsi_set_current_line(159, ng0);
    t4 = (t0 + 3088U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(162, ng0);
    t2 = (t0 + 5888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5728);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 6, 1000LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(160, ng0);
    t11 = ((char*)((ng6)));
    t12 = (t0 + 5728);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 6, 0LL);
    goto LAB8;

}

static void Always_173_6(char *t0)
{
    char t9[8];
    char t10[8];
    char t37[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;

LAB0:    t1 = (t0 + 8616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(173, ng0);
    t2 = (t0 + 9280);
    *((int *)t2) = 1;
    t3 = (t0 + 8648);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(173, ng0);

LAB5:    xsi_set_current_line(174, ng0);
    t4 = (t0 + 5728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 6, t7, 6);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 6, t2, 6);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 6, t2, 6);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 6, t2, 6);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng12)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 6, t2, 6);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 6, t2, 6);
    if (t8 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB2;

LAB7:    xsi_set_current_line(175, ng0);

LAB20:    xsi_set_current_line(176, ng0);
    t11 = (t0 + 5088);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t10, 0, 8);
    t14 = (t13 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t14) != 0)
        goto LAB23;

LAB24:    t21 = (t10 + 4);
    t22 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t21);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB25;

LAB26:    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t21);
    t29 = (t27 || t28);
    if (t29 > 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t21) > 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t10) > 0)
        goto LAB31;

LAB32:    memcpy(t9, t30, 8);

LAB33:    t31 = (t0 + 5888);
    xsi_vlogvar_assign_value(t31, t9, 0, 0, 6);
    goto LAB19;

LAB9:    xsi_set_current_line(179, ng0);

LAB34:    xsi_set_current_line(180, ng0);
    t3 = (t0 + 4608);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 4);
    t15 = *((unsigned int *)t7);
    t16 = (~(t15));
    t17 = *((unsigned int *)t5);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(183, ng0);
    t2 = (t0 + 5088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t5 = (t4 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t5) != 0)
        goto LAB40;

LAB41:    t11 = (t10 + 4);
    t22 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t11);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB42;

LAB43:    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t11);
    t29 = (t27 || t28);
    if (t29 > 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t11) > 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t10) > 0)
        goto LAB48;

LAB49:    memcpy(t9, t13, 8);

LAB50:    t14 = (t0 + 5888);
    xsi_vlogvar_assign_value(t14, t9, 0, 0, 6);

LAB37:    goto LAB19;

LAB11:    xsi_set_current_line(186, ng0);

LAB51:    xsi_set_current_line(187, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 5888);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB19;

LAB13:    xsi_set_current_line(190, ng0);

LAB52:    xsi_set_current_line(191, ng0);
    t3 = (t0 + 4288);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 4);
    t15 = *((unsigned int *)t7);
    t16 = (~(t15));
    t17 = *((unsigned int *)t5);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB53;

LAB54:    xsi_set_current_line(194, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 5888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);

LAB55:    goto LAB19;

LAB15:    xsi_set_current_line(197, ng0);

LAB69:    xsi_set_current_line(198, ng0);
    t3 = (t0 + 6048);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng6)));
    memset(t37, 0, 8);
    t11 = (t5 + 4);
    t12 = (t7 + 4);
    t15 = *((unsigned int *)t5);
    t16 = *((unsigned int *)t7);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t11);
    t19 = *((unsigned int *)t12);
    t22 = (t18 ^ t19);
    t23 = (t17 | t22);
    t24 = *((unsigned int *)t11);
    t26 = *((unsigned int *)t12);
    t27 = (t24 | t26);
    t28 = (~(t27));
    t29 = (t23 & t28);
    if (t29 != 0)
        goto LAB73;

LAB70:    if (t27 != 0)
        goto LAB72;

LAB71:    *((unsigned int *)t37) = 1;

LAB73:    memset(t10, 0, 8);
    t14 = (t37 + 4);
    t32 = *((unsigned int *)t14);
    t33 = (~(t32));
    t34 = *((unsigned int *)t37);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t14) != 0)
        goto LAB76;

LAB77:    t21 = (t10 + 4);
    t38 = *((unsigned int *)t10);
    t39 = *((unsigned int *)t21);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB78;

LAB79:    t41 = *((unsigned int *)t10);
    t42 = (~(t41));
    t43 = *((unsigned int *)t21);
    t44 = (t42 || t43);
    if (t44 > 0)
        goto LAB80;

LAB81:    if (*((unsigned int *)t21) > 0)
        goto LAB82;

LAB83:    if (*((unsigned int *)t10) > 0)
        goto LAB84;

LAB85:    memcpy(t9, t30, 8);

LAB86:    t31 = (t0 + 5888);
    xsi_vlogvar_assign_value(t31, t9, 0, 0, 6);
    goto LAB19;

LAB17:    xsi_set_current_line(201, ng0);

LAB87:    xsi_set_current_line(202, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 5888);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 6);
    goto LAB19;

LAB21:    *((unsigned int *)t10) = 1;
    goto LAB24;

LAB23:    t20 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB24;

LAB25:    t25 = ((char*)((ng9)));
    goto LAB26;

LAB27:    t30 = ((char*)((ng6)));
    goto LAB28;

LAB29:    xsi_vlog_unsigned_bit_combine(t9, 6, t25, 6, t30, 6);
    goto LAB33;

LAB31:    memcpy(t9, t25, 8);
    goto LAB33;

LAB35:    xsi_set_current_line(181, ng0);
    t11 = ((char*)((ng10)));
    t12 = (t0 + 5888);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 6);
    goto LAB37;

LAB38:    *((unsigned int *)t10) = 1;
    goto LAB41;

LAB40:    t7 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB41;

LAB42:    t12 = ((char*)((ng11)));
    goto LAB43;

LAB44:    t13 = ((char*)((ng9)));
    goto LAB45;

LAB46:    xsi_vlog_unsigned_bit_combine(t9, 6, t12, 6, t13, 6);
    goto LAB50;

LAB48:    memcpy(t9, t12, 8);
    goto LAB50;

LAB53:    xsi_set_current_line(192, ng0);
    t11 = (t0 + 5568);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t10, 0, 8);
    t14 = (t13 + 4);
    t22 = *((unsigned int *)t14);
    t23 = (~(t22));
    t24 = *((unsigned int *)t13);
    t26 = (t24 & t23);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t14) != 0)
        goto LAB58;

LAB59:    t21 = (t10 + 4);
    t28 = *((unsigned int *)t10);
    t29 = *((unsigned int *)t21);
    t32 = (t28 || t29);
    if (t32 > 0)
        goto LAB60;

LAB61:    t33 = *((unsigned int *)t10);
    t34 = (~(t33));
    t35 = *((unsigned int *)t21);
    t36 = (t34 || t35);
    if (t36 > 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t21) > 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t10) > 0)
        goto LAB66;

LAB67:    memcpy(t9, t30, 8);

LAB68:    t31 = (t0 + 5888);
    xsi_vlogvar_assign_value(t31, t9, 0, 0, 6);
    goto LAB55;

LAB56:    *((unsigned int *)t10) = 1;
    goto LAB59;

LAB58:    t20 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB59;

LAB60:    t25 = ((char*)((ng12)));
    goto LAB61;

LAB62:    t30 = ((char*)((ng10)));
    goto LAB63;

LAB64:    xsi_vlog_unsigned_bit_combine(t9, 6, t25, 6, t30, 6);
    goto LAB68;

LAB66:    memcpy(t9, t25, 8);
    goto LAB68;

LAB72:    t13 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB73;

LAB74:    *((unsigned int *)t10) = 1;
    goto LAB77;

LAB76:    t20 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB77;

LAB78:    t25 = ((char*)((ng13)));
    goto LAB79;

LAB80:    t30 = ((char*)((ng9)));
    goto LAB81;

LAB82:    xsi_vlog_unsigned_bit_combine(t9, 6, t25, 6, t30, 6);
    goto LAB86;

LAB84:    memcpy(t9, t25, 8);
    goto LAB86;

}

static void Always_209_7(char *t0)
{
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 8864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(209, ng0);
    t2 = (t0 + 9296);
    *((int *)t2) = 1;
    t3 = (t0 + 8896);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(209, ng0);

LAB5:    xsi_set_current_line(210, ng0);
    t4 = (t0 + 3088U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(220, ng0);

LAB10:    xsi_set_current_line(221, ng0);
    t2 = (t0 + 5728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB11:    t5 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 6, t5, 6);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng9)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t13 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng11)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t13 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng10)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t13 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng12)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t13 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng13)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t13 == 1)
        goto LAB22;

LAB23:
LAB24:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(210, ng0);

LAB9:    xsi_set_current_line(211, ng0);
    t11 = ((char*)((ng5)));
    t12 = (t0 + 4128);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 1000LL);
    xsi_set_current_line(212, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(213, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 4928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(214, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 5408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(216, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(217, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 6208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 1000LL);
    xsi_set_current_line(218, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(219, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 6048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    goto LAB8;

LAB12:    xsi_set_current_line(222, ng0);

LAB25:    xsi_set_current_line(223, ng0);
    t11 = ((char*)((ng5)));
    t12 = (t0 + 4928);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 1000LL);
    xsi_set_current_line(224, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 5408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(225, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(226, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4128);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(228, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(229, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 6208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 1000LL);
    xsi_set_current_line(230, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(231, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 6048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    goto LAB24;

LAB14:    xsi_set_current_line(234, ng0);

LAB26:    xsi_set_current_line(235, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 4928);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 1000LL);
    xsi_set_current_line(236, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 5408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(237, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(238, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4128);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    goto LAB24;

LAB16:    xsi_set_current_line(241, ng0);

LAB27:    xsi_set_current_line(242, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 4928);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 1000LL);
    xsi_set_current_line(244, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    xsi_set_current_line(245, ng0);
    t2 = (t0 + 6208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng6)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 3, t5, 3, t11, 3);
    t12 = (t0 + 6208);
    xsi_vlogvar_wait_assign_value(t12, t14, 0, 0, 3, 1000LL);
    xsi_set_current_line(246, ng0);
    t2 = (t0 + 6208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t14, 0, 8);
    t11 = (t14 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 2);
    t8 = (t7 & 1);
    *((unsigned int *)t14) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 2);
    t15 = (t10 & 1);
    *((unsigned int *)t11) = t15;
    t16 = (t0 + 3808);
    xsi_vlogvar_wait_assign_value(t16, t14, 0, 0, 1, 1000LL);
    goto LAB24;

LAB18:    xsi_set_current_line(249, ng0);

LAB28:    xsi_set_current_line(250, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 4928);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 1000LL);
    xsi_set_current_line(251, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 5408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 1000LL);
    goto LAB24;

LAB20:    xsi_set_current_line(254, ng0);

LAB29:    xsi_set_current_line(255, ng0);
    t3 = (t0 + 6048);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng6)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 1, t11, 1, t12, 1);
    t16 = (t0 + 6048);
    xsi_vlogvar_wait_assign_value(t16, t14, 0, 0, 1, 1000LL);
    goto LAB24;

LAB22:    xsi_set_current_line(258, ng0);

LAB30:    xsi_set_current_line(259, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 4128);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 1000LL);
    goto LAB24;

}


extern void work_m_00000000001493159258_2699271088_init()
{
	static char *pe[] = {(void *)Always_76_0,(void *)Always_94_1,(void *)Always_102_2,(void *)Always_118_3,(void *)Always_126_4,(void *)Always_158_5,(void *)Always_173_6,(void *)Always_209_7};
	xsi_register_didat("work_m_00000000001493159258_2699271088", "isim/hdmi_main_isim_beh.exe.sim/work/m_00000000001493159258_2699271088.didat");
	xsi_register_executes(pe);
}
