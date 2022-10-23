#! /vendor/bin/sh
#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

if grep -q simcardnum.doublesim=1 /proc/cmdline; then
    setprop vendor.radio.multisim.config dsds
fi

# Get device codename
PROJECT_VERSION=$(getprop "ro.boot.prj_version")

if [ "$PROJECT_VERSION" = "19821" ] || [ "$PROJECT_VERSION" = "19855" ] || [ "$PROJECT_VERSION" = "19867" ] || [ "$PROJECT_VERSION" = "19811" ]; then
    OPLUS_PROJECT=19821
elif [ "$PROJECT_VERSION" = "19805" ] || [ "$PROJECT_VERSION" = "20809" ] || [ "$PROJECT_VERSION" = "20828" ] || [ "$PROJECT_VERSION" = "20838" ]; then
    OPLUS_PROJECT=20828
fi

if [ "$OPLUS_PROJECT" = "19821" ]; then
    mount --bind /odm/19821/etc/acdbdata/Audio_Parameter_Version.txt /odm/etc/acdbdata/Audio_Parameter_Version.txt
    mount --bind /odm/19821/etc/acdbdata/Bluetooth_cal.acdb /odm/etc/acdbdata/Bluetooth_cal.acdb
    mount --bind /odm/19821/etc/acdbdata/General_cal.acdb /odm/etc/acdbdata/General_cal.acdb
    mount --bind /odm/19821/etc/acdbdata/Global_cal.acdb /odm/etc/acdbdata/Global_cal.acdb
    mount --bind /odm/19821/etc/acdbdata/Handset_cal.acdb /odm/etc/acdbdata/Handset_cal.acdb
    mount --bind /odm/19821/etc/acdbdata/Hdmi_cal.acdb /odm/etc/acdbdata/Hdmi_cal.acdb
    mount --bind /odm/19821/etc/acdbdata/Headset_cal.acdb /odm/etc/acdbdata/Headset_cal.acdb
    mount --bind /odm/19821/etc/acdbdata/Speaker_cal.acdb /odm/etc/acdbdata/Speaker_cal.acdb
    mount --bind /odm/19821/firmware/tfa98xx.cnt /odm/firmware/tfa98xx.cnt
    mount --bind /odm/19821/etc/camera/ashdr/ncf_pack_imx481.ncf /odm/etc/camera/ashdr/ncf_pack_imx481.ncf
    mount --bind /odm/19821/etc/camera/ashdr/ncf_pack_imx586.ncf /odm/etc/camera/ashdr/ncf_pack_imx586.ncf
    mount --bind /odm/19821/etc/camera/calibrationOutput_uw.bin /odm/etc/camera/calibrationOutput_uw.bin
    mount --bind /odm/19821/etc/camera/distortion_result.bin /odm/etc/camera/distortion_result.bin
    mount --bind /odm/19821/lib64/camera/com.qti.sensormodule.semco_imx586.bin /odm/lib64/camera/com.qti.sensormodule.semco_imx586.bin
    mount --bind /odm/19821/lib64/camera/com.qti.sensormodule.truly_imx471.bin /odm/lib64/camera/com.qti.sensormodule.truly_imx471.bin
    mount --bind /odm/19821/lib64/camera/com.qti.tuned.semco_imx586.bin /odm/lib64/camera/com.qti.tuned.semco_imx586.bin
    mount --bind /odm/19821/lib64/camera/com.qti.tuned.truly_imx471.bin /odm/lib64/camera/com.qti.tuned.truly_imx471.bin
    mount --bind /odm/19821/vendor/firmware/gfp9638.b00 /odm/vendor/firmware/gfp9638.b00
    mount --bind /odm/19821/vendor/firmware/gfp9638.b01 /odm/vendor/firmware/gfp9638.b01
    mount --bind /odm/19821/vendor/firmware/gfp9638.b02 /odm/vendor/firmware/gfp9638.b02
    mount --bind /odm/19821/vendor/firmware/gfp9638.b03 /odm/vendor/firmware/gfp9638.b03
    mount --bind /odm/19821/vendor/firmware/gfp9638.b04 /odm/vendor/firmware/gfp9638.b04
    mount --bind /odm/19821/vendor/firmware/gfp9638.b05 /odm/vendor/firmware/gfp9638.b05
    mount --bind /odm/19821/vendor/firmware/gfp9638.b06 /odm/vendor/firmware/gfp9638.b06
    mount --bind /odm/19821/vendor/firmware/gfp9638.b07 /odm/vendor/firmware/gfp9638.b07
    mount --bind /odm/19821/vendor/firmware/gfp9638.mdt /odm/vendor/firmware/gfp9638.mdt
fi