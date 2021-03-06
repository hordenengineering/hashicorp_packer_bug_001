# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

he_aws_pkr_mod = {

  # --------------------------------------------------------------------------------------
  #
  # --------------------------------------------------------------------------------------

  #

  "he_aws" = {

    # ------------------------------------------------------------------------------------
    #
    # ------------------------------------------------------------------------------------

    #

    "he_aws_pkr_app" = {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "app" = {
        "app"     = ["he", "aws", "tf", "app", ]
        "app_env" = ["env", "1", ]
        "app_ver" = ["0", "0", "1", ]
      }

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "app_pck" = {
        "app_pck"          = ["usr", "ah", ]
        "app_pck_attr"     = []
        "app_pck_mod"      = ["plt", "vpn", ]
        "app_pck_mod_attr" = ["img", ]
      }

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "app_pck_fmt" = {
        "app_pck_lbl_sep" = "-"
        "app_pck_pth_sep" = "_"
      }

    }

    "he_aws_pkr_mod" = {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "he_aws_pkr_mod_plt_vpn_img" = {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "he_aws_pkr_mod_plt_vpn_img_bld" = {

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          "bld_amz_ebs_stg_2" = {

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "build_amazon_ebs_stage_2_ssh_password" = ""

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "build_amazon_ebs_stage_2_ssh_username" = "admin"

          }

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          "bld_amz_ebs_stg_3" = {

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "build_amazon_ebs_stage_3_ssh_password" = "he"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "build_amazon_ebs_stage_3_ssh_username" = "he"

          }

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          "bld_qemu_stg_1" = {

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "build_qemu_stage_1_post_processor_compression" = {

              # --------------------------------------------------------------------------
              #
              # --------------------------------------------------------------------------

              #

              "build_qemu_stage_1_post_processor_compression_compression_level" = "8"

            }

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "build_qemu_stage_1_ssh_password" = "he"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "build_qemu_stage_1_ssh_username" = "he"

          }

        }

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "he_aws_pkr_mod_plt_vpn_img_src" = {

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          "src_amz_ebs_stg_2" = {

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_2_ami_root_device" = [

              {
                src_amz_ebs_stg_2_ami_rt_dev_del_on_tm  = "true"
                src_amz_ebs_stg_2_ami_rt_dev_dev_nm     = "/dev/xvda"
                src_amz_ebs_stg_2_ami_rt_dev_src_dev_nm = "/dev/xvdb"
                src_amz_ebs_stg_2_ami_rt_dev_vol_sze    = "18"
                src_amz_ebs_stg_2_ami_rt_dev_vol_typ    = "gp2"
              },

            ]

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_2_ami_virtualization_type" = "hvm"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_2_associate_public_ip_address" = "true"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_2_ena_support" = "true"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_2_encrypted_boot" = "true"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_2_force_deregister" = "true"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_2_instance_type" = "t2.micro"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_2_launch_block_device_mappings" = [

              {
                src_amz_ebs_stg_2_lch_blk_dev_map_del_on_tm = "true"
                src_amz_ebs_stg_2_lch_blk_dev_map_dev_nm    = "/dev/xvda"
                src_amz_ebs_stg_2_lch_blk_dev_map_vol_sze   = "18"
                src_amz_ebs_stg_2_lch_blk_dev_map_vol_typ   = "gp2"
              },

              {
                src_amz_ebs_stg_2_lch_blk_dev_map_del_on_tm = "true"
                src_amz_ebs_stg_2_lch_blk_dev_map_dev_nm    = "/dev/xvdb"
                src_amz_ebs_stg_2_lch_blk_dev_map_vol_sze   = "18"
                src_amz_ebs_stg_2_lch_blk_dev_map_vol_typ   = "gp2"
              },

            ]

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_2_source_ami_filter" = [
              {

                # ------------------------------------------------------------------------
                #
                # ------------------------------------------------------------------------

                #

                "src_amz_ebs_stg_2_src_ami_fltr_fltrs" = {
                  "src_amz_ebs_stg_2_src_ami_fltr_fltrs_nm"         = "debian-10-amd64-*"
                  "src_amz_ebs_stg_2_src_ami_fltr_fltrs_rt_dev_typ" = "ebs"
                  "src_amz_ebs_stg_2_src_ami_fltr_fltrs_virt_typ"   = "hvm"
                }

                # ------------------------------------------------------------------------
                #
                # ------------------------------------------------------------------------

                #

                "src_amz_ebs_stg_2_src_ami_fltr_mr"  = "true"

                # ------------------------------------------------------------------------
                #
                # ------------------------------------------------------------------------

                #

                "src_amz_ebs_stg_2_src_ami_fltr_own" = [
                  "136693071363",
                ]

              },
            ]

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_2_ssh_password" = ""

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_2_ssh_username" = "admin"

          }

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          "src_amz_ebs_stg_3" = {

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_3_ami_virtualization_type" = "hvm"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_3_associate_public_ip_address" = "true"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_3_ena_support" = "true"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_3_encrypted_boot" = "true"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_3_force_deregister" = "true"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_3_instance_type" = "t3.micro"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_3_launch_block_device_mappings" = [
              {
                src_amz_ebs_stg_3_lch_blk_dev_map_del_on_tm = "true"
                src_amz_ebs_stg_3_lch_blk_dev_map_dev_nm    = "/dev/xvda"
                src_amz_ebs_stg_3_lch_blk_dev_map_vol_sze   = "18"
                src_amz_ebs_stg_3_lch_blk_dev_map_vol_typ   = "gp2"
              },
            ]

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_3_source_ami_filter" = [
              {

                # ------------------------------------------------------------------------
                #
                # ------------------------------------------------------------------------

                #

                "src_amz_ebs_stg_3_src_ami_fltr_fltrs" = {
                  "src_amz_ebs_stg_3_src_ami_fltr_fltrs_rt_dev_typ" = "ebs"
                  "src_amz_ebs_stg_3_src_ami_fltr_fltrs_virt_typ"   = "hvm"
                }

                # ------------------------------------------------------------------------
                #
                # ------------------------------------------------------------------------

                #

                "src_amz_ebs_stg_3_src_ami_fltr_mr"  = "true"

              },
            ]

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_3_ssh_password" = "he"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_amazon_ebs_stage_3_ssh_username" = "he"



          }

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          "src_qemu_stg_1" = {

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            # [REFACTOR]

            "source_qemu_stage_1_accelerator" = "hvf"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            # [REFACTOR]

            "source_qemu_stage_1_cpus" = "4"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            # [REFACTOR]

            "source_qemu_stage_1_disk_interface" = "virtio-scsi"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            # [REFACTOR]

            "source_qemu_stage_1_disk_size" = "12G"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_format" = "raw"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_headless" = "true"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_iso_checksum" = "https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/SHA512SUMS"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_iso_url" = "https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-10.8.0-amd64-netinst.iso"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            # [REFACTOR]

            "source_qemu_stage_1_memory" = "6144"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            # [REFACTOR]

            "source_qemu_stage_1_network_device" = "virtio-net"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_qemu_arguments" = [
              [
                "-cpu",
                "qemu64",
              ],
              [
                "-m",
                "6144M",
              ],
              [
                "-smp",
                "4",
              ],
            ]

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_shutdown_timeout" = "5m"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_ssh_password" = "he"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_ssh_port" = "22"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_ssh_timeout" = "2h"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_ssh_username" = "he"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_vnc_port_min" = "5925"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_vnc_port_max" = "5965"

            # ----------------------------------------------------------------------------
            #
            # ----------------------------------------------------------------------------

            #

            "source_qemu_stage_1_vnc_use_password" = "true"

          }

        }

      }

    }

  }
}
