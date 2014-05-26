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
static unsigned int ng0[] = {0U, 0U};



static void implSig1_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 4288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2968U);
    t4 = *((char **)t2);
    t2 = (t0 + 2808U);
    t5 = *((char **)t2);
    t2 = (t0 + 2648U);
    t6 = *((char **)t2);
    t2 = ((char*)((ng0)));
    xsi_vlogtype_concat(t3, 32, 32, 4U, t2, 8, t6, 8, t5, 8, t4, 8);
    t7 = (t0 + 4688);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 8);
    xsi_driver_vfirst_trans(t7, 0, 31);
    t12 = (t0 + 4608);
    *((int *)t12) = 1;

LAB1:    return;
}


extern void work_m_00000000000492648820_2005814523_init()
{
	static char *pe[] = {(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000000492648820_2005814523", "isim/tb_hdmi_isim_beh.exe.sim/work/m_00000000000492648820_2005814523.didat");
	xsi_register_executes(pe);
}
