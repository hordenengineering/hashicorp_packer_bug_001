# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Source:
# ----------------------------------------------------------------------------------------

# [REFACTOR]

# source.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3

source "amazon-ebs" "he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3" {

  ami_description             = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ami_dsc
  ami_name                    = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ami_nm
  ami_virtualization_type     = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ami_virt_typ
  associate_public_ip_address = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_assoc_pub_ip_addr
  ena_support                 = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ena_sup
  encrypt_boot                = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_enc_bt
  force_deregister            = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_frc_dereg
  iam_instance_profile        = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_iam_ins_pf
  instance_type               = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ins_typ
  region                      = local.he_aws_pkr_app_rgn_eu
  run_tags                    = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_rn_tags
  run_volume_tags             = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_rn_vol_tags
  snapshot_tags               = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ss_tags
  ssh_password                = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ssh_pw
  ssh_username                = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ssh_un
  tags                        = local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_tags

  # --------------------------------------------------------------------------------------
  # Dynamic:
  # --------------------------------------------------------------------------------------

  #

  dynamic "assume_role" {

    # ------------------------------------------------------------------------------------
    # For:
    # ------------------------------------------------------------------------------------

    for_each = [
      for
      src_amz_ebs_stg_3_src_asm_rle_val
      in
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_asm_rle
      : {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        src_amz_ebs_stg_3_asm_rle_rle_arn = format(
          "%s",
          lookup(
            src_amz_ebs_stg_3_src_asm_rle_val,
            "src_amz_ebs_stg_3_asm_rle_rle_arn",
            "",
          ),
        )

      }
    ]

    # ------------------------------------------------------------------------------------
    # Iterator:
    # ------------------------------------------------------------------------------------

    iterator = src_amz_ebs_stg_3_src_asm_rle_val

    # ------------------------------------------------------------------------------------
    # Content:
    # ------------------------------------------------------------------------------------

    content {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      role_arn = format(
        "%s",
        lookup(
          src_amz_ebs_stg_3_src_asm_rle_val.value,
          "src_amz_ebs_stg_3_asm_rle_rle_arn",
          "",
        ),
      )

    }

  }

  # --------------------------------------------------------------------------------------
  # Dynamic:
  # --------------------------------------------------------------------------------------

  #

  dynamic "launch_block_device_mappings" {

    # ------------------------------------------------------------------------------------
    # For:
    # ------------------------------------------------------------------------------------

    for_each = [
      for
      src_amz_ebs_stg_3_lch_blk_dev_map_val
      in
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_lch_blk_dev_map
      : {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        src_amz_ebs_stg_3_lch_blk_dev_map_del_on_tm = format(
          "%t",
          lookup(
            src_amz_ebs_stg_3_lch_blk_dev_map_val,
            "src_amz_ebs_stg_3_lch_blk_dev_map_del_on_tm",
            "",
          ),
        )

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        src_amz_ebs_stg_3_lch_blk_dev_map_dev_nm = format(
          "%s",
          lookup(
            src_amz_ebs_stg_3_lch_blk_dev_map_val,
            "src_amz_ebs_stg_3_lch_blk_dev_map_dev_nm",
            "",
          ),
        )

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        src_amz_ebs_stg_3_lch_blk_dev_map_vol_sze = format(
          "%d",
          lookup(
            src_amz_ebs_stg_3_lch_blk_dev_map_val,
            "src_amz_ebs_stg_3_lch_blk_dev_map_vol_sze",
            "",
          ),
        )

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        src_amz_ebs_stg_3_lch_blk_dev_map_vol_typ = format(
          "%s",
          lookup(
            src_amz_ebs_stg_3_lch_blk_dev_map_val,
            "src_amz_ebs_stg_3_lch_blk_dev_map_vol_typ",
            "",
          ),
        )


      }
    ]

    # ------------------------------------------------------------------------------------
    # Iterator:
    # ------------------------------------------------------------------------------------

    iterator = src_amz_ebs_stg_3_lch_blk_dev_map_val

    # ------------------------------------------------------------------------------------
    # Content:
    # ------------------------------------------------------------------------------------

    content {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      delete_on_termination = format(
        "%t",
        lookup(
          src_amz_ebs_stg_3_lch_blk_dev_map_val.value,
          "src_amz_ebs_stg_3_lch_blk_dev_map_del_on_tm",
          "true",
        ),
      )

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      device_name = format(
        "%s",
        lookup(
          src_amz_ebs_stg_3_lch_blk_dev_map_val.value,
          "src_amz_ebs_stg_3_lch_blk_dev_map_dev_nm",
          "",
        ),
      )

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      volume_size = format(
        "%d",
        lookup(
          src_amz_ebs_stg_3_lch_blk_dev_map_val.value,
          "src_amz_ebs_stg_3_lch_blk_dev_map_vol_sze",
          "",
        ),
      )

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      volume_type = format(
        "%s",
        lookup(
          src_amz_ebs_stg_3_lch_blk_dev_map_val.value,
          "src_amz_ebs_stg_3_lch_blk_dev_map_vol_typ",
          "",
        ),
      )

    }

  }

  # --------------------------------------------------------------------------------------
  #
  # --------------------------------------------------------------------------------------

  #

  # security_group_filter {
  #   filters = {
  #     "tag:Name" = "HE-AWS-TF-APP-USR-AH-PLT-VPN-ENV-1"
  #   }
  # }

  # --------------------------------------------------------------------------------------
  # Dynamic:
  # --------------------------------------------------------------------------------------

  #

  dynamic "source_ami_filter" {

    # ------------------------------------------------------------------------------------
    # For:
    # ------------------------------------------------------------------------------------

    for_each = [
      for
      src_amz_ebs_stg_3_src_ami_fltr_val
      in
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_src_ami_fltr
      : {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        src_amz_ebs_stg_3_src_ami_fltr_fltrs = {

          # ------------------------------------------------------------------------------------
          # For:
          # ------------------------------------------------------------------------------------

          for
          src_amz_ebs_stg_3_src_ami_fltr_fltrs_key,
          src_amz_ebs_stg_3_src_ami_fltr_fltrs_val
          in
          lookup(
            src_amz_ebs_stg_3_src_ami_fltr_val,
            "src_amz_ebs_stg_3_src_ami_fltr_fltrs",
            {},
          ) :
          src_amz_ebs_stg_3_src_ami_fltr_fltrs_key =>
          src_amz_ebs_stg_3_src_ami_fltr_fltrs_val

        }

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        src_amz_ebs_stg_3_src_ami_fltr_mr = format(
          "%t",
          lookup(
            src_amz_ebs_stg_3_src_ami_fltr_val,
            "src_amz_ebs_stg_3_src_ami_fltr_mr",
            "true",
          ),
        )

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        src_amz_ebs_stg_3_src_ami_fltr_own = formatlist(
          "%d",
          [

            # ------------------------------------------------------------------------------------
            # For:
            # ------------------------------------------------------------------------------------

            for
            src_amz_ebs_stg_3_src_ami_fltr_own_val
            in
            lookup(
              src_amz_ebs_stg_3_src_ami_fltr_val,
              "src_amz_ebs_stg_3_src_ami_fltr_own",
              [],
            ) :
            src_amz_ebs_stg_3_src_ami_fltr_own_val

          ],
        )

      }
    ]

    # ------------------------------------------------------------------------------------
    # Iterator:
    # ------------------------------------------------------------------------------------

    iterator = src_amz_ebs_stg_3_src_ami_fltr_val

    # ------------------------------------------------------------------------------------
    # Content:
    # ------------------------------------------------------------------------------------

    content {

      # ----------------------------------------------------------------------------------
      # Filters:
      # ----------------------------------------------------------------------------------

      filters = {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "name" = format(
          "%s",
          lookup(
            src_amz_ebs_stg_3_src_ami_fltr_val.value.src_amz_ebs_stg_3_src_ami_fltr_fltrs,
            "src_amz_ebs_stg_3_src_ami_fltr_fltrs_nm",
            "",
          ),
        )

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "root-device-type" = format(
          "%s",
          lookup(
            src_amz_ebs_stg_3_src_ami_fltr_val.value.src_amz_ebs_stg_3_src_ami_fltr_fltrs,
            "src_amz_ebs_stg_3_src_ami_fltr_fltrs_rt_dev_typ",
            "ebs",
          ),
        )

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "virtualization-type" = format(
          "%s",
          lookup(
            src_amz_ebs_stg_3_src_ami_fltr_val.value.src_amz_ebs_stg_3_src_ami_fltr_fltrs,
            "src_amz_ebs_stg_3_src_ami_fltr_fltrs_virt_typ",
            "hvm",
          ),
        )

      }

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      most_recent = format(
        "%t",
        lookup(
          src_amz_ebs_stg_3_src_ami_fltr_val.value,
          "src_amz_ebs_stg_3_src_ami_fltr_mr",
          "true",
        ),
      )

      # --------------------------------------------------------------------------------
      #
      # --------------------------------------------------------------------------------

      #

      owners = formatlist(
        "%d",
        [

          # ------------------------------------------------------------------------------------
          # For:
          # ------------------------------------------------------------------------------------

          for
          src_amz_ebs_stg_3_src_ami_fltr_own_val
          in
          lookup(
            src_amz_ebs_stg_3_src_ami_fltr_val.value,
            "src_amz_ebs_stg_3_src_ami_fltr_own",
            [],
          ) :
          src_amz_ebs_stg_3_src_ami_fltr_own_val

        ],
      )

    }

  }
  # --------------------------------------------------------------------------------------
  # Dynamic:
  # --------------------------------------------------------------------------------------

  #

  dynamic "subnet_filter" {

    # ------------------------------------------------------------------------------------
    # For:
    # ------------------------------------------------------------------------------------

    for_each = [
      for
      src_amz_ebs_stg_3_src_sn_fltr_val
      in
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_sn_fltr
      : {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        src_amz_ebs_stg_3_src_sn_fltr_fltrs = {

          # ------------------------------------------------------------------------------------
          # For:
          # ------------------------------------------------------------------------------------

          for
          src_amz_ebs_stg_3_src_sn_fltr_fltrs_key,
          src_amz_ebs_stg_3_src_sn_fltr_fltrs_val
          in
          lookup(
            src_amz_ebs_stg_3_src_sn_fltr_val,
            "src_amz_ebs_stg_3_src_sn_fltr_fltrs",
            {},
          ) :
          src_amz_ebs_stg_3_src_sn_fltr_fltrs_key =>
          src_amz_ebs_stg_3_src_sn_fltr_fltrs_val

        }

      }
    ]

    # ------------------------------------------------------------------------------------
    # Iterator:
    # ------------------------------------------------------------------------------------

    iterator = src_amz_ebs_stg_3_src_sn_fltr_val

    # ------------------------------------------------------------------------------------
    # Content:
    # ------------------------------------------------------------------------------------

    content {

      # ----------------------------------------------------------------------------------
      # Filters:
      # ----------------------------------------------------------------------------------

      filters = {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "tag:Name" = format(
          "%s",
          lookup(
            src_amz_ebs_stg_3_src_sn_fltr_val.value.src_amz_ebs_stg_3_src_sn_fltr_fltrs,
            "src_amz_ebs_stg_3_src_sn_fltr_fltrs_tag_nm",
            "",
          ),
        )

      }

    }

  }

  # --------------------------------------------------------------------------------------
  # Dynamic:
  # --------------------------------------------------------------------------------------

  #

  dynamic "vpc_filter" {

    # ------------------------------------------------------------------------------------
    # For:
    # ------------------------------------------------------------------------------------

    for_each = [
      for
      src_amz_ebs_stg_3_src_vpc_fltr_val
      in
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_vpc_fltr
      : {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        src_amz_ebs_stg_3_src_vpc_fltr_fltrs = {

          # ------------------------------------------------------------------------------------
          # For:
          # ------------------------------------------------------------------------------------

          for
          src_amz_ebs_stg_3_src_vpc_fltr_fltrs_key,
          src_amz_ebs_stg_3_src_vpc_fltr_fltrs_val
          in
          lookup(
            src_amz_ebs_stg_3_src_vpc_fltr_val,
            "src_amz_ebs_stg_3_src_vpc_fltr_fltrs",
            {},
          ) :
          src_amz_ebs_stg_3_src_vpc_fltr_fltrs_key =>
          src_amz_ebs_stg_3_src_vpc_fltr_fltrs_val

        }

      }
    ]

    # ------------------------------------------------------------------------------------
    # Iterator:
    # ------------------------------------------------------------------------------------

    iterator = src_amz_ebs_stg_3_src_vpc_fltr_val

    # ------------------------------------------------------------------------------------
    # Content:
    # ------------------------------------------------------------------------------------

    content {

      # ----------------------------------------------------------------------------------
      # Filters:
      # ----------------------------------------------------------------------------------

      filters = {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "tag:Name" = format(
          "%s",
          lookup(
            src_amz_ebs_stg_3_src_vpc_fltr_val.value.src_amz_ebs_stg_3_src_vpc_fltr_fltrs,
            "src_amz_ebs_stg_3_src_vpc_fltr_fltrs_tag_nm",
            "",
          ),
        )

      }

    }

  }

}
