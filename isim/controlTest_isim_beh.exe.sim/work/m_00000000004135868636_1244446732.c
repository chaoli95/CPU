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
static const char *ng0 = "C:/projects/CPU/ImmExtender.v";
static int ng1[] = {15, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {65535U, 0U};
static unsigned int ng4[] = {0U, 0U};



static void Cont_27_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t16[8];
    char t17[8];
    char t20[8];
    char t25[8];
    char t52[8];
    char t59[8];
    char t66[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t62 = *((unsigned int *)t4);
    t63 = (~(t62));
    t64 = *((unsigned int *)t12);
    t65 = (t63 || t64);
    if (t65 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t66, 8);

LAB16:    t69 = (t0 + 2928);
    t70 = (t69 + 56U);
    t71 = *((char **)t70);
    t72 = (t71 + 56U);
    t73 = *((char **)t72);
    memcpy(t73, t3, 8);
    xsi_driver_vfirst_trans(t69, 0, 31);
    t74 = (t0 + 2848);
    *((int *)t74) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 1048U);
    t19 = *((char **)t18);
    t18 = (t0 + 1008U);
    t21 = (t18 + 72U);
    t22 = *((char **)t21);
    t23 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t20, 32, t19, t22, 2, t23, 32, 1);
    t24 = ((char*)((ng2)));
    memset(t25, 0, 8);
    t26 = (t20 + 4);
    t27 = (t24 + 4);
    t28 = *((unsigned int *)t20);
    t29 = *((unsigned int *)t24);
    t30 = (t28 ^ t29);
    t31 = *((unsigned int *)t26);
    t32 = *((unsigned int *)t27);
    t33 = (t31 ^ t32);
    t34 = (t30 | t33);
    t35 = *((unsigned int *)t26);
    t36 = *((unsigned int *)t27);
    t37 = (t35 | t36);
    t38 = (~(t37));
    t39 = (t34 & t38);
    if (t39 != 0)
        goto LAB20;

LAB17:    if (t37 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t25) = 1;

LAB20:    memset(t17, 0, 8);
    t41 = (t25 + 4);
    t42 = *((unsigned int *)t41);
    t43 = (~(t42));
    t44 = *((unsigned int *)t25);
    t45 = (t44 & t43);
    t46 = (t45 & 1U);
    if (t46 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t41) != 0)
        goto LAB23;

LAB24:    t48 = (t17 + 4);
    t49 = *((unsigned int *)t17);
    t50 = *((unsigned int *)t48);
    t51 = (t49 || t50);
    if (t51 > 0)
        goto LAB25;

LAB26:    t55 = *((unsigned int *)t17);
    t56 = (~(t55));
    t57 = *((unsigned int *)t48);
    t58 = (t56 || t57);
    if (t58 > 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t48) > 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t17) > 0)
        goto LAB31;

LAB32:    memcpy(t16, t59, 8);

LAB33:    goto LAB9;

LAB10:    t67 = (t0 + 1048U);
    t68 = *((char **)t67);
    t67 = ((char*)((ng4)));
    xsi_vlogtype_concat(t66, 32, 32, 2U, t67, 16, t68, 16);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t16, 32, t66, 32);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

LAB19:    t40 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t17) = 1;
    goto LAB24;

LAB23:    t47 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB24;

LAB25:    t53 = (t0 + 1048U);
    t54 = *((char **)t53);
    t53 = ((char*)((ng3)));
    xsi_vlogtype_concat(t52, 32, 32, 2U, t53, 16, t54, 16);
    goto LAB26;

LAB27:    t60 = (t0 + 1048U);
    t61 = *((char **)t60);
    t60 = ((char*)((ng4)));
    xsi_vlogtype_concat(t59, 32, 32, 2U, t60, 16, t61, 16);
    goto LAB28;

LAB29:    xsi_vlog_unsigned_bit_combine(t16, 32, t52, 32, t59, 32);
    goto LAB33;

LAB31:    memcpy(t16, t52, 8);
    goto LAB33;

}


extern void work_m_00000000004135868636_1244446732_init()
{
	static char *pe[] = {(void *)Cont_27_0};
	xsi_register_didat("work_m_00000000004135868636_1244446732", "isim/controlTest_isim_beh.exe.sim/work/m_00000000004135868636_1244446732.didat");
	xsi_register_executes(pe);
}
