# Copyright (c) 2020 - 2021 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Build:
# ----------------------------------------------------------------------------------------

build {

  # --------------------------------------------------------------------------------------
  # Sources:
  # --------------------------------------------------------------------------------------

  sources = [
    "source.amazon-ebs.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3",
  ]

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  name = "he_aws_pkr_mod_plt_vpn_img_stg_3"

  # --------------------------------------------------------------------------------------
  # Provisioner:
  # --------------------------------------------------------------------------------------

  provisioner "shell" {

    # ------------------------------------------------------------------------------------
    # Only:
    # ------------------------------------------------------------------------------------

    only = [
      "amazon-ebs.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3",
    ]

    # ------------------------------------------------------------------------------------
    # Argument:
    # ------------------------------------------------------------------------------------

    #

    script = format(
      "%s/%s/%s/%s/%s/%s",
      var.he_aws_pkr_mod_pth,
      "he_aws_pkr_mod",
      "he_aws_pkr_mod_plt_vpn_img",
      "he_aws_pkr_mod_plt_vpn_img",
      "he_aws_pkr_mod_plt_vpn_img_stg_3",
      "script_001_name.sh",
    )

    # ------------------------------------------------------------------------------------
    # Arguments:
    # ------------------------------------------------------------------------------------

    execute_command   = local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3_pv_sh_exe_com
    expect_disconnect = "true"
    inline_shebang    = "/usr/bin/env bash"

  }

  # --------------------------------------------------------------------------------------
  # Provisioner:
  # --------------------------------------------------------------------------------------

  provisioner "shell" {

    # ------------------------------------------------------------------------------------
    # Only:
    # ------------------------------------------------------------------------------------

    only = [
      "amazon-ebs.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3",
    ]

    # ------------------------------------------------------------------------------------
    # Argument:
    # ------------------------------------------------------------------------------------

    #

    inline = [

      # ----------------------------------------------------------------------------------
      # Script:
      # ----------------------------------------------------------------------------------

      #

      "/usr/bin/mkdir -p /home/he/he_ipsec",
      "/usr/bin/mkdir -p /home/he/vpn",

      "chown -R he:he /home/he/he_ipsec",

      format(
        "/usr/bin/aws s3 cp --recursive %s %s",
        local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3_pv_sh_s3_pth,
        "/home/he/vpn",
      ),

      "chown -R he:he /home/he/vpn",

    ]

    # ------------------------------------------------------------------------------------
    # Arguments:
    # ------------------------------------------------------------------------------------

    execute_command = local.he_aws_pkr_mod_plt_vpn_img_bld_amz_ebs_stg_3_pv_sh_exe_com

  }

  # --------------------------------------------------------------------------------------
  # Provisioner:
  # --------------------------------------------------------------------------------------

  provisioner file {

    # ------------------------------------------------------------------------------------
    # Only:
    # ------------------------------------------------------------------------------------

    only = [
      "amazon-ebs.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3",
    ]

    # ------------------------------------------------------------------------------------
    # Argument:
    # ------------------------------------------------------------------------------------

    #

    sources = [

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      format(
        "%s/%s/%s/%s/%s/%s",
        var.he_aws_pkr_mod_pth,
        "he_aws_pkr_mod",
        "he_aws_pkr_mod_plt_vpn_img",
        "he_aws_pkr_mod_plt_vpn_img",
        "he_aws_pkr_mod_plt_vpn_img_stg_3",
        "he_ipsec.sh",
      ),

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      format(
        "%s/%s/%s/%s/%s/%s",
        var.he_aws_pkr_mod_pth,
        "he_aws_pkr_mod",
        "he_aws_pkr_mod_plt_vpn_img",
        "he_aws_pkr_mod_plt_vpn_img",
        "he_aws_pkr_mod_plt_vpn_img_stg_3",
        "he_ipsec_ike_v2_debug.sh",
      ),

    ]

    # ------------------------------------------------------------------------------------
    # Arguments:
    # ------------------------------------------------------------------------------------

    destination = "/home/he/he_ipsec/"

  }

}
