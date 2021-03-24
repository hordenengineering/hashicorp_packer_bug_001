# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# var.he_aws_pkr_app_acc_id

variable "he_aws_pkr_app_acc_id" {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_pkr_app_acc_id"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = string

  # --------------------------------------------------------------------------------------
  # Validation:
  # --------------------------------------------------------------------------------------

  validation {
    condition     = length(var.he_aws_pkr_app_acc_id) > 0
    error_message = "The he_aws_pkr_app_acc_id value must be greater than zero."
  }

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_pkr_app_bld_pth

variable "he_aws_pkr_app_bld_pth" {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_pkr_app_bld_pth"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = list(string)

  # --------------------------------------------------------------------------------------
  # Validation:
  # --------------------------------------------------------------------------------------

  validation {
    condition     = length(var.he_aws_pkr_app_bld_pth) > 0
    error_message = "The he_aws_pkr_app_bld_pth value must be greater than zero."
  }

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_pkr_app_rgn_eu

variable "he_aws_pkr_app_rgn_eu" {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_pkr_app_rgn_eu"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = list(string)

  # --------------------------------------------------------------------------------------
  # Validation:
  # --------------------------------------------------------------------------------------

  validation {
    condition     = length(var.he_aws_pkr_app_rgn_eu) > 0
    error_message = "The he_aws_pkr_app_rgn_eu value must be greater than zero."
  }

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_pkr_app_rgn_us

variable he_aws_pkr_app_rgn_us {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_pkr_app_rgn_us"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = list(string)

  # --------------------------------------------------------------------------------------
  # Validation:
  # --------------------------------------------------------------------------------------

  validation {
    condition     = length(var.he_aws_pkr_app_rgn_us) > 0
    error_message = "The he_aws_pkr_app_rgn_us value must be greater than zero."
  }

}

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_pkr_mod

variable "he_aws_pkr_mod" {

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = object(
    {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      he_aws = object(
        {

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          he_aws_pkr_app = object(
            {

              # --------------------------------------------------------------------------
              #
              # --------------------------------------------------------------------------

              #

              app = object(
                {
                  app     = list(string)
                  app_env = list(string)
                  app_ver = list(string)
                }
              )

              # --------------------------------------------------------------------------
              #
              # --------------------------------------------------------------------------

              #

              app_pck = object(
                {
                  app_pck          = list(string)
                  app_pck_attr     = list(string)
                  app_pck_mod      = list(string)
                  app_pck_mod_attr = list(string)
                }
              )

              # --------------------------------------------------------------------------
              #
              # --------------------------------------------------------------------------

              #

              app_pck_fmt = object(
                {
                  app_pck_lbl_sep = string
                  app_pck_pth_sep = string
                }
              )

            }
          )

          # ------------------------------------------------------------------------------
          #
          # ------------------------------------------------------------------------------

          #

          he_aws_pkr_mod = object(
            {

              # --------------------------------------------------------------------------
              #
              # --------------------------------------------------------------------------

              #

              he_aws_pkr_mod_plt_vpn_img = object(
                {

                  # ----------------------------------------------------------------------
                  #
                  # ----------------------------------------------------------------------

                  #

                  he_aws_pkr_mod_plt_vpn_img_bld = object(
                    {

                      # ------------------------------------------------------------------
                      #
                      # ------------------------------------------------------------------

                      #

                      bld_amz_ebs_stg_2 = object(
                        {

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          build_amazon_ebs_stage_2_ssh_password = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          build_amazon_ebs_stage_2_ssh_username = string

                        }
                      )

                      # ------------------------------------------------------------------
                      #
                      # ------------------------------------------------------------------

                      #

                      bld_amz_ebs_stg_3 = object(
                        {

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          build_amazon_ebs_stage_3_ssh_password = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          build_amazon_ebs_stage_3_ssh_username = string

                        }
                      )

                      # ------------------------------------------------------------------
                      #
                      # ------------------------------------------------------------------

                      #

                      bld_qemu_stg_1 = object(
                        {

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          build_qemu_stage_1_post_processor_compression = object(
                            {

                              # ----------------------------------------------------------
                              #
                              # ----------------------------------------------------------

                              #

                              build_qemu_stage_1_post_processor_compression_compression_level = number

                            }
                          )

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          build_qemu_stage_1_ssh_password = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          build_qemu_stage_1_ssh_username = string

                        }
                      )

                      # ------------------------------------------------------------------

                    }
                  )

                  # ----------------------------------------------------------------------
                  #
                  # ----------------------------------------------------------------------

                  #

                  he_aws_pkr_mod_plt_vpn_img_src = object(
                    {

                      # ------------------------------------------------------------------
                      #
                      # ------------------------------------------------------------------

                      #

                      src_amz_ebs_stg_2 = object(
                        {

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_2_ami_root_device = list(
                            object(
                              {
                                src_amz_ebs_stg_2_ami_rt_dev_del_on_tm  = bool
                                src_amz_ebs_stg_2_ami_rt_dev_dev_nm     = string
                                src_amz_ebs_stg_2_ami_rt_dev_src_dev_nm = string
                                src_amz_ebs_stg_2_ami_rt_dev_vol_sze    = number
                                src_amz_ebs_stg_2_ami_rt_dev_vol_typ    = string
                              }
                            )
                          )

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_2_ami_virtualization_type = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_2_associate_public_ip_address = bool

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_2_ena_support = bool

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_2_encrypted_boot = bool

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_2_force_deregister = bool

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_2_instance_type = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_2_launch_block_device_mappings = list(
                            object(
                              {
                                src_amz_ebs_stg_2_lch_blk_dev_map_del_on_tm = bool
                                src_amz_ebs_stg_2_lch_blk_dev_map_dev_nm    = string
                                src_amz_ebs_stg_2_lch_blk_dev_map_vol_sze   = number
                                src_amz_ebs_stg_2_lch_blk_dev_map_vol_typ   = string
                              }
                            )
                          )

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_2_source_ami_filter = list(
                            object(
                              {

                                src_amz_ebs_stg_2_src_ami_fltr_fltrs = object(
                                  {
                                    src_amz_ebs_stg_2_src_ami_fltr_fltrs_nm         = string
                                    src_amz_ebs_stg_2_src_ami_fltr_fltrs_rt_dev_typ = string
                                    src_amz_ebs_stg_2_src_ami_fltr_fltrs_virt_typ   = string
                                  }
                                )

                                src_amz_ebs_stg_2_src_ami_fltr_mr  = bool
                                src_amz_ebs_stg_2_src_ami_fltr_own = list(number)

                              }
                            )
                          )

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_2_ssh_password = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_2_ssh_username = string

                        }
                      )

                      # ------------------------------------------------------------------
                      #
                      # ------------------------------------------------------------------

                      #

                      src_amz_ebs_stg_3 = object(
                        {

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_3_ami_virtualization_type = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_3_associate_public_ip_address = bool

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_3_ena_support = bool

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_3_encrypted_boot = bool

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_3_force_deregister = bool



                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_3_instance_type = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_3_launch_block_device_mappings = list(
                            object(
                              {
                                src_amz_ebs_stg_3_lch_blk_dev_map_del_on_tm = bool
                                src_amz_ebs_stg_3_lch_blk_dev_map_dev_nm    = string
                                src_amz_ebs_stg_3_lch_blk_dev_map_vol_sze   = number
                                src_amz_ebs_stg_3_lch_blk_dev_map_vol_typ   = string
                              }
                            )
                          )

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_3_source_ami_filter = list(
                            object(
                              {

                                src_amz_ebs_stg_3_src_ami_fltr_fltrs = object(
                                  {
                                    src_amz_ebs_stg_3_src_ami_fltr_fltrs_rt_dev_typ = string
                                    src_amz_ebs_stg_3_src_ami_fltr_fltrs_virt_typ   = string
                                  }
                                )

                                src_amz_ebs_stg_3_src_ami_fltr_mr = bool

                              }
                            )
                          )

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_3_ssh_password = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_amazon_ebs_stage_3_ssh_username = string

                        }
                      )

                      # ------------------------------------------------------------------
                      #
                      # ------------------------------------------------------------------

                      #

                      src_qemu_stg_1 = object(
                        {

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_accelerator = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_cpus = number

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_disk_interface = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_disk_size = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_format = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_headless = bool

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_iso_checksum = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_iso_url = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_memory = number

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_qemu_arguments = list(list(string))

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_shutdown_timeout = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_ssh_password = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_ssh_port = number

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_ssh_timeout = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_ssh_username = string

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_vnc_port_min = number

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_vnc_port_max = number

                          # --------------------------------------------------------------
                          #
                          # --------------------------------------------------------------

                          #

                          source_qemu_stage_1_vnc_use_password = bool

                        }
                      )

                    }
                  )

                }
              )

            }
          )

        }
      )

    }
  )

  # --------------------------------------------------------------------------------------
  # Validation:
  # --------------------------------------------------------------------------------------

  validation {
    condition     = length(var.he_aws_pkr_mod) > 0
    error_message = "The he_aws_pkr_mod value must be greater than zero."
  }

}

# [REFACTOR]

# ----------------------------------------------------------------------------------------
# Variable:
# ----------------------------------------------------------------------------------------

# var.he_aws_pkr_mod_pth

variable "he_aws_pkr_mod_pth" {

  # --------------------------------------------------------------------------------------
  # Description:
  # --------------------------------------------------------------------------------------

  description = "he_aws_pkr_mod_pth"

  # --------------------------------------------------------------------------------------
  # Type:
  # --------------------------------------------------------------------------------------

  type = string

  # --------------------------------------------------------------------------------------
  # Validation:
  # --------------------------------------------------------------------------------------

  validation {
    condition     = length(var.he_aws_pkr_mod_pth) > 0
    error_message = "The he_aws_pkr_mod_pth value must be greater than zero."
  }

}