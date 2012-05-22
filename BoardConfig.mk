# Copyright (C) 2011 The Android Open Source Project
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

# Use the non-open-source part, if present
-include vendor/allwinner/zatab/BoardConfigVendor.mk

# Use the part that is common between all allwinner
include device/allwinner/common/BoardConfig.mk

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/allwinner/zatab/recovery_keys.c

TARGET_KERNEL_CONFIG := zatab_defconfig

SW_BOARD_USES_GSENSOR_TYPE := bma250
SW_BOARD_GSENSOR_XY_REVERT := true
SW_BOARD_GSENSOR_DIRECT_X := true
SW_BOARD_GSENSOR_DIRECT_Y := true
