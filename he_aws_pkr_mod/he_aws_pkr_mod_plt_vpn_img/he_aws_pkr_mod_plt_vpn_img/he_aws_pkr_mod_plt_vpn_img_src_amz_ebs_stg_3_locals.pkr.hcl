# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3 = merge(
    local.he_aws_pkr_mod_plt_vpn_img.he_aws_pkr_mod_plt_vpn_img_src.src_amz_ebs_stg_3,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ami_dsc

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ami_dsc = format(
    "%s%s",
    ": ",
    upper(
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
      )
    ),
  )


  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ami_nm

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ami_nm = format(
    "%s",
    upper(
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
      )
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ami_virt_typ

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ami_virt_typ = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3,
      "source_amazon_ebs_stage_3_ami_virtualization_type",
      "hvm",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_asm_rle

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_asm_rle = [
    {

      # --------------------------------------------------------------------------------
      #
      # --------------------------------------------------------------------------------

      "asm_rle_rle_arn" = format(
        "%s:%s:%s::%s:%s/%s/%s/%s",
        "arn",
        "aws",
        "iam",
        local.he_aws_pkr_app_acc_id,
        "role",
        upper(
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
                ],
              )
            ),
          )
        ),
        upper(
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
                      "app_env",
                      [],
                    ),
                  ),
                ],
              )
            ),
          )
        ),
        upper(
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
                      "app_env",
                      [],
                    ),
                  ),
                ],
              )
            ),
          )
        ),
      )

    },
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_assoc_pub_ip_addr

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_assoc_pub_ip_addr = format(
    "%t",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3,
      "source_amazon_ebs_stage_3_associate_public_ip_address",
      "true",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ena_sup

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ena_sup = format(
    "%t",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3,
      "source_amazon_ebs_stage_3_ena_support",
      "true",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_enc_bt

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_enc_bt = format(
    "%t",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3,
      "source_amazon_ebs_stage_3_encrypted_boot",
      "true",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_frc_dereg

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_frc_dereg = format(
    "%t",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3,
      "source_amazon_ebs_stage_3_force_deregister",
      "true",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_iam_ins_pf

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_iam_ins_pf = format(
    "%s",
    upper(
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
      )
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ins_typ

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ins_typ = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3,
      "source_amazon_ebs_stage_3_instance_type",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_lch_blk_dev_map

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_lch_blk_dev_map = [

    # ------------------------------------------------------------------------------------
    # For:
    # ------------------------------------------------------------------------------------

    for
    he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_lch_blk_dev_map_val
    in
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3,
      "source_amazon_ebs_stage_3_launch_block_device_mappings",
      [],
    ) :
    he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_lch_blk_dev_map_val

  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_rn_tags

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_rn_tags = merge(
    {},
    {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "Environment" = format(
        "%s",
        upper(
          join(
            local.he_aws_pkr_app_pck_lbl_sep,
            lookup(
              local.he_aws_pkr_app,
              "app_env",
              [],
            ),
          )
        ),
      )

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "Name" = format(
        "%s",
        upper(
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
                        "bld",
                        "stg",
                        "3",
                      ],
                    ),
                  ),
                  join(
                    local.he_aws_pkr_app_pck_lbl_sep,
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
                    local.he_aws_pkr_app_pck_lbl_sep,
                    lookup(
                      local.he_aws_pkr_app,
                      "app_env",
                      [],
                    ),
                  ),
                ]
              )
            )
          )
        ),
      )

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "Version" = format(
        "%s%s",
        lower(
          join(
            ".",
            [
              "v",
            ],
          )
        ),
        upper(
          join(
            ".",
            lookup(
              local.he_aws_pkr_app,
              "app_ver",
              [],
            ),
          )
        ),
      )
    },
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_rn_vol_tags

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_rn_vol_tags = merge(
    {},
    {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "Environment" = format(
        "%s",
        upper(
          join(
            local.he_aws_pkr_app_pck_lbl_sep,
            lookup(
              local.he_aws_pkr_app,
              "app_env",
              [],
            ),
          )
        ),
      )

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "Name" = format(
        "%s",
        upper(
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
                        "bld",
                        "stg",
                        "3",
                      ],
                    ),
                  ),
                  join(
                    local.he_aws_pkr_app_pck_lbl_sep,
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
                    local.he_aws_pkr_app_pck_lbl_sep,
                    lookup(
                      local.he_aws_pkr_app,
                      "app_env",
                      [],
                    ),
                  ),
                ]
              )
            )
          )
        ),
      )

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "Version" = format(
        "%s%s",
        lower(
          join(
            ".",
            [
              "v",
            ],
          )
        ),
        upper(
          join(
            ".",
            lookup(
              local.he_aws_pkr_app,
              "app_ver",
              [],
            ),
          )
        ),
      )
    },
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ss_tags

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ss_tags = merge(
    {},
    {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "Environment" = format(
        "%s",
        upper(
          join(
            local.he_aws_pkr_app_pck_lbl_sep,
            lookup(
              local.he_aws_pkr_app,
              "app_env",
              [],
            ),
          )
        ),
      )

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "Name" = format(
        "%s",
        upper(
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
                    local.he_aws_pkr_app_pck_lbl_sep,
                    lookup(
                      local.he_aws_pkr_app,
                      "app_env",
                      [],
                    ),
                  ),
                ]
              )
            )
          )
        ),
      )

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "Version" = format(
        "%s%s",
        lower(
          join(
            ".",
            [
              "v",
            ],
          )
        ),
        upper(
          join(
            ".",
            lookup(
              local.he_aws_pkr_app,
              "app_ver",
              [],
            ),
          )
        ),
      )
    },
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_sn_fltr

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_sn_fltr = [
    {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "src_amz_ebs_stg_3_src_sn_fltr_fltrs" = {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "src_amz_ebs_stg_3_src_sn_fltr_fltrs_tag_nm" = format(
          "%s",
          upper(
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
                      [
                        "sn",
                        "4",
                        "eu",
                        "west",
                        "2a",
                      ],
                    ),
                    join(
                      local.he_aws_pkr_app_pck_lbl_sep,
                      lookup(
                        local.he_aws_pkr_app,
                        "app_env",
                        [],
                      ),
                    ),
                  ]
                )
              )
            )
          ),
        )

      }

    },

  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_src_ami_fltr

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_src_ami_fltr = [
    {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "src_amz_ebs_stg_3_src_ami_fltr_fltrs" = {
        "src_amz_ebs_stg_3_src_ami_fltr_fltrs_nm"         = "HE-AWS-TF-APP-USR-AH-PLT-VPN-IMG-BLD-STG-2-V-0-0-1-ENV-1"
        "src_amz_ebs_stg_3_src_ami_fltr_fltrs_rt_dev_typ" = "ebs"
        "src_amz_ebs_stg_3_src_ami_fltr_fltrs_virt_typ"   = "hvm"
      }

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "src_amz_ebs_stg_3_src_ami_fltr_mr" = "true"

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "src_amz_ebs_stg_3_src_ami_fltr_own" = [
        local.he_aws_pkr_app_acc_id,
      ]

    },
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ssh_pw

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ssh_pw = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3,
      "source_amazon_ebs_stage_3_ssh_password",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ssh_un

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_ssh_un = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3,
      "source_amazon_ebs_stage_3_ssh_username",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_tags

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_tags = merge(
    {},
    {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "Environment" = format(
        "%s",
        upper(
          join(
            local.he_aws_pkr_app_pck_lbl_sep,
            lookup(
              local.he_aws_pkr_app,
              "app_env",
              [],
            ),
          )
        ),
      )

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "Name" = format(
        "%s",
        upper(
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
                    local.he_aws_pkr_app_pck_lbl_sep,
                    lookup(
                      local.he_aws_pkr_app,
                      "app_env",
                      [],
                    ),
                  ),
                ]
              )
            )
          )
        ),
      )

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "Version" = format(
        "%s%s",
        lower(
          join(
            ".",
            [
              "v",
            ],
          )
        ),
        upper(
          join(
            ".",
            lookup(
              local.he_aws_pkr_app,
              "app_ver",
              [],
            ),
          )
        ),
      )
    },
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_vpc_fltr

  he_aws_pkr_mod_plt_vpn_img_src_amz_ebs_stg_3_vpc_fltr = [
    {

      # ----------------------------------------------------------------------------------
      #
      # ----------------------------------------------------------------------------------

      #

      "src_amz_ebs_stg_3_src_vpc_fltr_fltrs" = {

        # --------------------------------------------------------------------------------
        #
        # --------------------------------------------------------------------------------

        #

        "src_amz_ebs_stg_3_src_vpc_fltr_fltrs_tag_nm" = format(
          "%s",
          upper(
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
                        "app_env",
                        [],
                      ),
                    ),
                  ]
                )
              )
            )
          ),
        )

      }

    },

  ]

}
