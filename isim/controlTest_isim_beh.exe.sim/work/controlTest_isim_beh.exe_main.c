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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002166904892_1733832700_init();
    xilinxcorelib_ver_m_00000000001067635404_4287652608_init();
    work_m_00000000003693808920_2220189930_init();
    work_m_00000000003218667554_0273213086_init();
    work_m_00000000003544686685_0886308060_init();
    work_m_00000000004135868636_1244446732_init();
    work_m_00000000003711304308_0424241041_init();
    xilinxcorelib_ver_m_00000000001067635404_4235216450_init();
    work_m_00000000004259014342_0580584324_init();
    work_m_00000000001578772987_2058220583_init();
    work_m_00000000002047498008_4057859379_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002047498008_4057859379");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
