#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common tblte
-include device/samsung/trlte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := SCL24

# Bootanimation
TARGET_SCREEN_WIDTH := 1600

# Camera
TARGET_FIXUP_PREVIEW := true

# Kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3b7 dwc3_msm.cpu_to_affin=1
TARGET_KERNEL_VARIANT_CONFIG := apq8084_sec_tblte_kdi_defconfig

# Init
TARGET_INIT_VENDOR_LIB := libinit_apq8084
TARGET_LIBINIT_APQ8084_DEFINES_FILE := device/samsung/SCL24/init/init_SCL24.cpp

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 17825792
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 19932160
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3774873600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27040657408

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/trlte-common/releasetools

# Radio/RIL
include $(COMMON_PATH)/radio/single/board.mk

# inherit from the proprietary version
-include vendor/samsung/SCL24/BoardConfigVendor.mk
