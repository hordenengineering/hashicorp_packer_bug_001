# Copyright (c) 2020 - 2021 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3

  he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3 = merge(
    local.he_aws_pkr_mod_plt_vpn_img.he_aws_pkr_mod_plt_vpn_img_bld.bld_amz_ebs_stg_3,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3_pv_sh_exe_com

  he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3_pv_sh_exe_com = format(
    "printf '%s' | sudo -S {{.Path}}",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3,
      "source_amazon_ebs_stage_3_ssh_password",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3_pv_sh_s3_pth

  # [REFACTOR]

  he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3_pv_sh_s3_pth = format(
    "s3://%s/%s/%s",
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
              concat(
                lookup(
                  local.he_aws_pkr_app,
                  "app_pck_mod_attr",
                  [],
                ),
                [
                  "cnf",
                ],
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
    "he_aws_tf_app_usr_ah_plt_vpn_img_cnf_env_1"
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3_ssh_pw

  he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3_ssh_pw = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3,
      "build_amazon_ebs_stage_3_ssh_password",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3_ssh_un

  he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3_ssh_un = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3,
      "build_amazon_ebs_stage_3_ssh_username",
      "",
    ),
  )

}
