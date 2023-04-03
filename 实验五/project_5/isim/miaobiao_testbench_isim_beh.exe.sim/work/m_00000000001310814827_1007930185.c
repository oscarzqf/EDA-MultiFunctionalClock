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
static const char *ng0 = "E:/2020020910019/project_5/leddisplaynew.v";
static int ng1[] = {5, 0};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};
static int ng6[] = {2, 0};
static unsigned int ng7[] = {4U, 0U};
static int ng8[] = {3, 0};
static unsigned int ng9[] = {8U, 0U};
static int ng10[] = {4, 0};
static unsigned int ng11[] = {16U, 0U};
static unsigned int ng12[] = {32U, 0U};
static unsigned int ng13[] = {0U, 0U};
static unsigned int ng14[] = {3U, 0U};
static unsigned int ng15[] = {159U, 0U};
static unsigned int ng16[] = {37U, 0U};
static unsigned int ng17[] = {13U, 0U};
static unsigned int ng18[] = {153U, 0U};
static unsigned int ng19[] = {73U, 0U};
static int ng20[] = {6, 0};
static unsigned int ng21[] = {65U, 0U};
static int ng22[] = {7, 0};
static unsigned int ng23[] = {31U, 0U};
static int ng24[] = {8, 0};
static int ng25[] = {9, 0};
static unsigned int ng26[] = {25U, 0U};
static unsigned int ng27[] = {255U, 0U};
static int ng28[] = {15, 0};
static int ng29[] = {10, 0};
static int ng30[] = {11, 0};
static int ng31[] = {12, 0};
static int ng32[] = {13, 0};
static int ng33[] = {14, 0};



static void Always_40_0(char *t0)
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
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 5616);
    *((int *)t2) = 1;
    t3 = (t0 + 3840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(41, ng0);

LAB5:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 2568);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB7;

LAB6:    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t6) < *((unsigned int *)t7))
        goto LAB9;

LAB8:    *((unsigned int *)t8) = 1;

LAB9:    t12 = (t8 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (~(t13));
    t15 = *((unsigned int *)t8);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 3, t5, 32);
    t6 = (t0 + 2568);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 3);

LAB13:    goto LAB2;

LAB7:    t11 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB9;

LAB11:    xsi_set_current_line(43, ng0);
    t18 = ((char*)((ng2)));
    t19 = (t0 + 2568);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 3);
    goto LAB13;

}

static void Always_48_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 5632);
    *((int *)t2) = 1;
    t3 = (t0 + 4088);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(49, ng0);

LAB5:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 2568);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 32);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t8 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);

LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(51, ng0);
    t9 = ((char*)((ng4)));
    t10 = (t0 + 2248);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 8);
    goto LAB21;

LAB9:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB21;

LAB11:    xsi_set_current_line(53, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB21;

LAB13:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB21;

LAB15:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB21;

LAB17:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB21;

}

static void Always_62_2(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;

LAB0:    t1 = (t0 + 4304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5648);
    *((int *)t2) = 1;
    t3 = (t0 + 4336);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(63, ng0);

LAB5:    xsi_set_current_line(64, ng0);
    t4 = (t0 + 2568);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 32);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 32);
    if (t8 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(65, ng0);
    t10 = (t0 + 1048U);
    t11 = *((char **)t10);
    memset(t9, 0, 8);
    t10 = (t9 + 4);
    t12 = (t11 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (t13 >> 0);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 0);
    *((unsigned int *)t10) = t16;
    t17 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t17 & 15U);
    t18 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t18 & 15U);
    t19 = (t0 + 2728);
    xsi_vlogvar_assign_value(t19, t9, 0, 0, 4);
    goto LAB21;

LAB9:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t5 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 4);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 4);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t17 & 15U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 15U);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 4);
    goto LAB21;

LAB11:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t5 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 8);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 8);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t17 & 15U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 15U);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 4);
    goto LAB21;

LAB13:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t5 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 12);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 12);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t17 & 15U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 15U);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 4);
    goto LAB21;

LAB15:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t5 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 16);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 16);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t17 & 15U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 15U);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 4);
    goto LAB21;

LAB17:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t5 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 20);
    *((unsigned int *)t9) = t14;
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 20);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t17 & 15U);
    t18 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t18 & 15U);
    t7 = (t0 + 2728);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 4);
    goto LAB21;

}

static void Always_76_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 5664);
    *((int *)t2) = 1;
    t3 = (t0 + 4584);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(77, ng0);

LAB5:    xsi_set_current_line(78, ng0);
    t4 = (t0 + 2728);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t7, 32);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng20)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng22)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng24)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng25)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB25;

LAB26:
LAB28:
LAB27:    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng27)));
    t3 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);

LAB29:    goto LAB2;

LAB7:    xsi_set_current_line(79, ng0);
    t9 = ((char*)((ng14)));
    t10 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 8, 0LL);
    goto LAB29;

LAB9:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB29;

LAB11:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB29;

LAB13:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB29;

LAB15:    xsi_set_current_line(83, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB29;

LAB17:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB29;

LAB19:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB29;

LAB21:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng23)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB29;

LAB23:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB29;

LAB25:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 8, 0LL);
    goto LAB29;

}

static void Cont_95_4(char *t0)
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
    char *t16;

LAB0:    t1 = (t0 + 4800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 5792);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 5680);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Always_97_5(char *t0)
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
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 5048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 5696);
    *((int *)t2) = 1;
    t3 = (t0 + 5080);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(98, ng0);

LAB5:    xsi_set_current_line(99, ng0);
    t4 = (t0 + 2888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng28)));
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

LAB9:    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(105, ng0);

LAB14:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 4, t5, 32);
    t6 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t6, t8, 0, 0, 4, 0LL);
    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB12:    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(100, ng0);

LAB13:    xsi_set_current_line(101, ng0);
    t30 = ((char*)((ng2)));
    t31 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 4, 0LL);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

}

static void Always_111_6(char *t0)
{
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 5296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 5712);
    *((int *)t2) = 1;
    t3 = (t0 + 5328);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(112, ng0);

LAB5:    xsi_set_current_line(113, ng0);
    t4 = (t0 + 2888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t7, 32);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng20)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng22)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng24)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng25)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng29)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng30)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng31)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng32)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng33)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng28)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 32);
    if (t8 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB41:    goto LAB2;

LAB7:    xsi_set_current_line(114, ng0);
    t9 = (t0 + 2408);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memset(t12, 0, 8);
    t13 = (t12 + 4);
    t14 = (t11 + 4);
    t15 = *((unsigned int *)t11);
    t16 = (t15 >> 0);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 >> 0);
    t20 = (t19 & 1);
    *((unsigned int *)t13) = t20;
    t21 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t21, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB9:    xsi_set_current_line(115, ng0);
    t3 = (t0 + 2408);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 1);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 1);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB11:    xsi_set_current_line(116, ng0);
    t3 = (t0 + 2408);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 2);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 2);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB13:    xsi_set_current_line(117, ng0);
    t3 = (t0 + 2408);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 3);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 3);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB15:    xsi_set_current_line(118, ng0);
    t3 = (t0 + 2408);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 4);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 4);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB17:    xsi_set_current_line(119, ng0);
    t3 = (t0 + 2408);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 5);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 5);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB19:    xsi_set_current_line(120, ng0);
    t3 = (t0 + 2408);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 6);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 6);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB21:    xsi_set_current_line(121, ng0);
    t3 = (t0 + 2408);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 7);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 7);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB23:    xsi_set_current_line(122, ng0);
    t3 = (t0 + 2248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 7);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 7);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB25:    xsi_set_current_line(123, ng0);
    t3 = (t0 + 2248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 6);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 6);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB27:    xsi_set_current_line(124, ng0);
    t3 = (t0 + 2248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 5);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 5);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB29:    xsi_set_current_line(125, ng0);
    t3 = (t0 + 2248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 4);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 4);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB31:    xsi_set_current_line(126, ng0);
    t3 = (t0 + 2248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 3);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 3);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB33:    xsi_set_current_line(127, ng0);
    t3 = (t0 + 2248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 2);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 2);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB35:    xsi_set_current_line(128, ng0);
    t3 = (t0 + 2248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 1);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 1);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

LAB37:    xsi_set_current_line(129, ng0);
    t3 = (t0 + 2248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 0);
    t17 = (t16 & 1);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t9);
    t19 = (t18 >> 0);
    t20 = (t19 & 1);
    *((unsigned int *)t7) = t20;
    t10 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t10, t12, 0, 0, 1, 0LL);
    goto LAB41;

}


extern void work_m_00000000001310814827_1007930185_init()
{
	static char *pe[] = {(void *)Always_40_0,(void *)Always_48_1,(void *)Always_62_2,(void *)Always_76_3,(void *)Cont_95_4,(void *)Always_97_5,(void *)Always_111_6};
	xsi_register_didat("work_m_00000000001310814827_1007930185", "isim/miaobiao_testbench_isim_beh.exe.sim/work/m_00000000001310814827_1007930185.didat");
	xsi_register_executes(pe);
}
