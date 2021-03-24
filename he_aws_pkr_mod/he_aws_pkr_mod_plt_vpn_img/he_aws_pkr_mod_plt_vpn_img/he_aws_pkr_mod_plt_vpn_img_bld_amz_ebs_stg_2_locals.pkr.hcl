# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2

  he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2 = merge(
    local.he_aws_pkr_mod_plt_vpn_img.he_aws_pkr_mod_plt_vpn_img_bld.bld_amz_ebs_stg_2,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2_pv_sh_exe_com

  he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2_pv_sh_exe_com = format(
    "printf '%s' | sudo -S {{.Path}}",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2,
      "build_amazon_ebs_stage_2_ssh_password",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2_pv_sh_s3_pth

  # [REFACTOR]

  he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2_pv_sh_s3_pth = format(
    "s3://%s/%s/%s/%s.%s",
    join(
      local.he_aws_pkr_app_pck_lbl_sep,
      compact(
        concat(
          [
            join(
              local.he_aws_pkr_app_pck_lbl_sep,
              lookup(
                local.he_aws_pkr_app,
                "app",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_lbl_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_lbl_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck_attr",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_lbl_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck_mod",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_lbl_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck_mod_attr",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_lbl_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_env",
                [],
              ),
            ),
          ],
        )
      ),
    ),
    join(
      local.he_aws_pkr_app_pck_pth_sep,
      concat(
        [
          "v",
        ],
        lookup(
          local.he_aws_pkr_app,
          "app_ver",
          [],
        ),
      ),
    ),
    "he_aws_tf_app_usr_ah_plt_vpn_img_bld_stg_1_env_1",
    "he_aws_tf_app_usr_ah_plt_vpn_img_bld_stg_1_v_0_0_1_env_1",
    "raw.tar.gz",
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2_ssh_pw

  he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2_ssh_pw = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2,
      "build_amazon_ebs_stage_2_ssh_password",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2_ssh_un

  he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2_ssh_un = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_2,
      "build_amazon_ebs_stage_2_ssh_username",
      "",
    ),
  )

}
