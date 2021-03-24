# Copyright (c) 2020 - 2021 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
# Source:
# ----------------------------------------------------------------------------------------

# source.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1

source "qemu" "he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1" {

  # --------------------------------------------------------------------------------------
  # Arguments:
  # --------------------------------------------------------------------------------------

  accelerator      = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_acltr
  boot_command     = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_boot_cmd
  cpus             = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_cpus
  disk_interface   = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_dsk_itf
  disk_size        = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_dsk_sze
  format           = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_fmt
  headless         = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_hdl
  http_directory   = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_http_dir
  iso_checksum     = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_iso_cks
  iso_url          = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_iso_url
  memory           = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_mem
  net_device       = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_net_dev
  output_directory = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_op_dir
  qemuargs         = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_qemu_args
  shutdown_command = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_shtdn_com
  shutdown_timeout = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_shtdn_to
  ssh_password     = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_ssh_pw
  ssh_port         = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_ssh_prt
  ssh_timeout      = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_ssh_to
  ssh_username     = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_ssh_un
  vm_name          = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_vm_nm
  vnc_port_max     = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_vnc_prt_max
  vnc_port_min     = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_vnc_prt_min
  vnc_use_password = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_vnc_use_pwd
  qmp_enable       = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_qmp_en
  qmp_socket_path  = local.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1_qmp_pth

}
