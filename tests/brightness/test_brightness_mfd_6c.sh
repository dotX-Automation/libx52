#!/bin/bash
# Test setting MFD brightness to 0x006c

source $(dirname $0)/../common_infra.sh

expect_pattern $X52_MFD_BRIGHTNESS_INDEX 0x006c

$X52CLI bri MFD 0x006c

verify_output

