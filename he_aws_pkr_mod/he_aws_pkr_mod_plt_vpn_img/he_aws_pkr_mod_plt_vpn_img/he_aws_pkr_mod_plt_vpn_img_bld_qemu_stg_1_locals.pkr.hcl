# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1

  he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1 = merge(
    local.he_aws_pkr_mod_plt_vpn_img.he_aws_pkr_mod_plt_vpn_img_bld.bld_qemu_stg_1,
    #local.he_aws_pkr_mod_plt_vpn_img.he_aws_pkr_mod_plt_vpn_img_bld.bld_qemu_stg_1.build_qemu_stage_1_post_processor_compression,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pp_cmp_cmp_lvl

  he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pp_cmp_cmp_lvl = format(
    "%d",
    "8",
    # lookup(
    #   local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1,
    #   "build_qemu_stage_1_post_processor_compression_compression_level",
    #   "8",
    # ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pp_cksm_cksm_typ

  # [REFACTOR]

  he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pp_cksm_cksm_typ = formatlist(
    "%s",
    [
      "sha512",
    ],
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pp_cksm_op

  he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pp_cksm_op = format(
    "%s/%s/%s.%s.%s",
    local.he_aws_pkr_app_bld_pth,
    join(
      local.he_aws_pkr_app_pck_pth_sep,
      compact(
        concat(
          [
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck_attr",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck_mod",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              concat(
                lookup(
                  local.he_aws_pkr_app,
                  "app_pck_mod_attr",
                  [],
                ),
                [
                  "bld",
                  "stg",
                  "1",
                ],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
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
      compact(
        concat(
          [
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck_attr",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck_mod",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              concat(
                lookup(
                  local.he_aws_pkr_app,
                  "app_pck_mod_attr",
                  [],
                ),
                [
                  "bld",
                  "stg",
                  "1",
                ],
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
            join(
              local.he_aws_pkr_app_pck_pth_sep,
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
    "raw",
    "{{.ChecksumType}}",
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pp_cmp_op

  he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pp_cmp_op = format(
    "%s/%s/%s.%s.%s.%s",
    local.he_aws_pkr_app_bld_pth,
    join(
      local.he_aws_pkr_app_pck_pth_sep,
      compact(
        concat(
          [
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck_attr",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck_mod",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              concat(
                lookup(
                  local.he_aws_pkr_app,
                  "app_pck_mod_attr",
                  [],
                ),
                [
                  "bld",
                  "stg",
                  "1",
                ],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
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
      compact(
        concat(
          [
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck_attr",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              lookup(
                local.he_aws_pkr_app,
                "app_pck_mod",
                [],
              ),
            ),
            join(
              local.he_aws_pkr_app_pck_pth_sep,
              concat(
                lookup(
                  local.he_aws_pkr_app,
                  "app_pck_mod_attr",
                  [],
                ),
                [
                  "bld",
                  "stg",
                  "1",
                ],
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
            join(
              local.he_aws_pkr_app_pck_pth_sep,
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
    "raw",
    "tar",
    "gz",
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pv_sh_exe_com

  he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pv_sh_exe_com = format(
    "printf '%s' | sudo -S {{.Path}}",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1,
      "build_qemu_stage_1_ssh_password",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_ssh_pw

  he_aws_pkr_mod_plt_vpn_img_bld_qemu_ssh_pw = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1,
      "build_qemu_stage_1_ssh_password",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_ssh_un

  he_aws_pkr_mod_plt_vpn_img_bld_qemu_ssh_un = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1,
      "build_qemu_stage_1_ssh_username",
      "",
    ),
  )

}
