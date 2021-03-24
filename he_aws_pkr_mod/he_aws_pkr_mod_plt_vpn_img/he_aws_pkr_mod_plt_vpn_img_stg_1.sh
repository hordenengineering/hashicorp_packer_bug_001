#!/usr/bin/env bash

# Copyright (c) 2018 - 2020 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

set -o \
  xtrace

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

PTH="${PTH}";

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

PTH_TMP=$(printf "%s/%s" "${PTH}" "he_aws_pkr_mod_tmp")

rm -rf "${PTH_TMP}"

if [ ! -d "${PTH_TMP}" ]; then
   mkdir -p "${PTH_TMP}"
fi

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

# Stage 1

export PACKER_CACHE_DIR="${PTH_TMP}";
export PACKER_LOG="1";

function he_aws_pkr() {

  packer build \
    -force \
    -only="he_aws_pkr_mod_plt_vpn_img_stg_1.qemu.he_aws_pkr_mod_plt_vpn_img_src_qemu_stg_1" \
    -var="he_aws_pkr_app_acc_id=00000000000" \
    -var="he_aws_pkr_app_bld_pth=[\"${HOME}\", \"vpn_tmp\", ]" \
    -var="he_aws_pkr_mod_pth=${PTH}" \
    -var="he_aws_pkr_app_rgn_eu=[\"eu\", \"west\", \"2\", ]" \
    -var="he_aws_pkr_app_rgn_us=[\"us\", \"east\", \"1\", ]" \
    -var-file="${PTH}/he_aws_pkr_mod/he_aws_pkr_mod_plt_vpn_img/he_aws_pkr_mod_plt_vpn_img_cnf/he_aws_pkr_mod_plt_vpn_img_env_1/he_aws_pkr_mod_plt_vpn_img_cnf.hcl" \
    ${PTH}/he_aws_pkr_mod/he_aws_pkr_mod_plt_vpn_img/he_aws_pkr_mod_plt_vpn_img

  return $?

}

he_aws_pkr

while [ $? -ne 0 ]; do
  he_aws_pkr
done

export PACKER_CACHE_DIR="";
export PACKER_LOG="";
