# Copyright (c) 2020 - 2021 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Locals:
# ----------------------------------------------------------------------------------------

locals {

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1 = merge(
    local.he_aws_pkr_mod_plt_vpn_img.he_aws_pkr_mod_plt_vpn_img_src.src_qemu_stg_1,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_acltr

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_acltr = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_accelerator",
      "none",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_boot_cmd

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_boot_cmd = [
    "<esc>",
    "install ",
    "preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/he_img_debian_v_10 ",
    "debian-installer=en_GB.UTF-8 ",
    "auto ",
    "locale=en_GB.UTF-8 ",
    "kbd-chooser/method=gb ",
    "keyboard-configuration/xkb-keymap=uk ",
    "netcfg/get_hostname=he ",
    "netcfg/get_domain=horden.io ",
    "fb=false ",
    "debconf/frontend=noninteractive ",
    "console-setup/ask_detect=false ",
    "console-keymaps-at/keymap=uk ",
    "grub-installer/bootdev=/dev/sda ",
    "<enter>",
  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_cpus

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_cpus = format(
    "%d",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_cpus",
      "4",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_dsk_itf

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_dsk_itf = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_disk_interface",
      "virtio-scsi",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_dsk_sze

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_dsk_sze = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_disk_size",
      "12G",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_fmt

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_fmt = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_format",
      "raw",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_hdl

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_hdl = format(
    "%t",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_headless",
      "true",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_http_dir

  # [REFACTOR]

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_http_dir = format(
    "%s/%s/%s/%s/%s",
    var.he_aws_pkr_mod_pth,
    "he_aws_pkr_mod",
    "he_aws_pkr_mod_plt_vpn_img",
    "he_aws_pkr_mod_plt_vpn_img",
    "he_aws_pkr_mod_plt_vpn_img_http",
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_iso_cks

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_iso_cks = format(
    "%s:%s",
    "file",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_iso_checksum",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_iso_url

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_iso_url = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_iso_url",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_net_dev

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_net_dev = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_network_device",
      "virtio-net",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_mem

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_mem = format(
    "%d",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_memory",
      "6144",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_op_dir

  # [REFACTOR]

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_op_dir = format(
    "%s/%s/%s",
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
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_qemu_args

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_qemu_args = [

    # ------------------------------------------------------------------------------------
    # For:
    # ------------------------------------------------------------------------------------

    for
    he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_qemu_args_val
    in
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_qemu_arguments",
      [],
    ) :
    he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_qemu_args_val

  ]

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_shtdn_com

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_shtdn_com = format(
    "printf '%s' | sudo -S /usr/bin/systemctl poweroff",
    local.he_aws_pkr_mod_plt_vpn_img_bld_qemu_ssh_pw,
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_shtdn_to

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_shtdn_to = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_shutdown_timeout",
      "5m",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_ssh_prt

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_ssh_prt = format(
    "%d",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_ssh_port",
      "22",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_ssh_pw

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_ssh_pw = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_ssh_password",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_ssh_to

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_ssh_to = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_ssh_timeout",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_ssh_un

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_ssh_un = format(
    "%s",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_ssh_username",
      "",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_vm_nm

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_vm_nm = format(
    "%s.%s",
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
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_vnc_prt_max

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_vnc_prt_max = format(
    "%d",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_vnc_port_max",
      "5925",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_vnc_prt_min

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_vnc_prt_min = format(
    "%d",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_vnc_port_min",
      "5925",
    ),
  )

  # --------------------------------------------------------------------------------------
  # Local:
  # --------------------------------------------------------------------------------------

  # local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_vnc_use_pwd

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_vnc_use_pwd = format(
    "%v",
    lookup(
      local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1,
      "source_qemu_stage_1_vnc_use_password",
      "true",
    ),
  )

  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_qmp_en  = "true"
  he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_qmp_pth = "/Users/adam.horden/tmp/vm.monitor"

}
