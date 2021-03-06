# Copyright (c) 2020 - 2021 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Build:
# ----------------------------------------------------------------------------------------

build {

  # --------------------------------------------------------------------------------------
  # Name:
  # --------------------------------------------------------------------------------------

  name = "he_aws_pkr_mod_plt_vpn_img_stg_1"

  # --------------------------------------------------------------------------------------
  # Sources:
  # --------------------------------------------------------------------------------------

  sources = [
    "source.qemu.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1",
  ]

  # --------------------------------------------------------------------------------------
  # Provisioner:
  # --------------------------------------------------------------------------------------

  provisioner "shell" {

    # ------------------------------------------------------------------------------------
    # Only:
    # ------------------------------------------------------------------------------------

    only = [
      "qemu.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1",
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

      format(
        "printf '%s ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/100_%s",
        local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_ssh_un,
        local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_ssh_un,
      ),

      # ----------------------------------------------------------------------------------
      # Script:
      # ----------------------------------------------------------------------------------

      #

      format(
        "chmod 0440 /etc/sudoers.d/100_%s",
        local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_ssh_un,
      ),

    ]

    # ------------------------------------------------------------------------------------
    # Arguments:
    # ------------------------------------------------------------------------------------

    # [REFACTOR]

    execute_command   = local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pv_sh_exe_com
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
      "qemu.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1",
    ]

    # ------------------------------------------------------------------------------------
    # Argument:
    # ------------------------------------------------------------------------------------

    #

    # [REFACTOR]

    script = format(
      "%s/%s/%s/%s/%s/%s",
      var.he_aws_pkr_mod_pth,
      "he_aws_pkr_mod",
      "he_aws_pkr_mod_plt_vpn_img",
      "he_aws_pkr_mod_plt_vpn_img",
      "he_aws_pkr_mod_plt_vpn_img_stg_1",
      "script_001_name.sh",
    )

    # ------------------------------------------------------------------------------------
    # Arguments:
    # ------------------------------------------------------------------------------------

    # [REFACTOR]

    execute_command   = local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pv_sh_exe_com
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
      "qemu.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1",
    ]

    # ------------------------------------------------------------------------------------
    # Argument:
    # ------------------------------------------------------------------------------------

    #

    # [REFACTOR]

    script = format(
      "%s/%s/%s/%s/%s/%s",
      var.he_aws_pkr_mod_pth,
      "he_aws_pkr_mod",
      "he_aws_pkr_mod_plt_vpn_img",
      "he_aws_pkr_mod_plt_vpn_img",
      "he_aws_pkr_mod_plt_vpn_img_stg_1",
      "script_002_name.sh",
    )

    # ------------------------------------------------------------------------------------
    # Arguments:
    # ------------------------------------------------------------------------------------

    # [REFACTOR]

    execute_command   = local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pv_sh_exe_com
    expect_disconnect = "true"
    inline_shebang    = "/usr/bin/env bash"

  }

  # --------------------------------------------------------------------------------------
  # Post Processor:
  # --------------------------------------------------------------------------------------

  post-processor checksum {

    # ------------------------------------------------------------------------------------
    # Arguments:
    # ------------------------------------------------------------------------------------

    # [REFACTOR]

    checksum_types      = local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pp_cksm_cksm_typ
    keep_input_artifact = "true"
    output              = local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pp_cksm_op

  }

  # --------------------------------------------------------------------------------------
  # Post Processor:
  # --------------------------------------------------------------------------------------

  post-processor compress {

    # ------------------------------------------------------------------------------------
    # Arguments:
    # ------------------------------------------------------------------------------------

    compression_level = local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pp_cmp_cmp_lvl
    output            = local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_stg_1_pp_cmp_op

  }

}
