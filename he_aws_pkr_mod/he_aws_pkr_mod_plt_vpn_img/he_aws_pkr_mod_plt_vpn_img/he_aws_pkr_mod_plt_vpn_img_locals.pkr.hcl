# Copyright (c) 2020 - 2021 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_app

  he_aws_pkr_app = merge(
    var.he_aws_pkr_mod.he_aws.he_aws_pkr_app.app,
    var.he_aws_pkr_mod.he_aws.he_aws_pkr_app.app_pck,
    var.he_aws_pkr_mod.he_aws.he_aws_pkr_app.app_pck_fmt,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_app_acc_id

  he_aws_pkr_app_acc_id = format(
    "%d",
    "00000000000",
    #var.he_aws_pkr_app_acc_id,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_app_bld_pth

  he_aws_pkr_app_bld_pth = format(
    "%s",
    join(
      "/",
      var.he_aws_pkr_app_bld_pth,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_app_env

  he_aws_pkr_app_env = format(
    "%s",
    join(
      local.he_aws_pkr_app_pck_pth_sep,
      lookup(
        local.he_aws_pkr_app,
        "app_env",
        [],
      ),
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_app_pck_lbl_sep

  he_aws_pkr_app_pck_lbl_sep = format(
    "%s",
    lookup(
      local.he_aws_pkr_app,
      "app_pck_lbl_sep",
      "-",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_app_pck_pth_sep

  he_aws_pkr_app_pck_pth_sep = format(
    "%s",
    lookup(
      local.he_aws_pkr_app,
      "app_pck_pth_sep",
      "_",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_app_rgn_eu

  he_aws_pkr_app_rgn_eu = format(
    "%s",
    join(
      local.he_aws_pkr_app_pck_lbl_sep,
      var.he_aws_pkr_app_rgn_eu,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_app_rgn_us

  he_aws_pkr_app_rgn_us = format(
    "%s",
    join(
      local.he_aws_pkr_app_pck_lbl_sep,
      var.he_aws_pkr_app_rgn_us,
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img

  he_aws_pkr_mod_plt_vpn_img = merge(
    var.he_aws_pkr_mod.he_aws.he_aws_pkr_mod.he_aws_pkr_mod_plt_vpn_img,
  )

}
