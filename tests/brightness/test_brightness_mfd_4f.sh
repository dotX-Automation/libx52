#!/bin/bash
# Test setting MFD brightness to 0x004f

source $(dirname $0)/../common_infra.sh

expect_pattern $X52_MFD_BRIGHTNESS_INDEX 0x004f

$X52CLI bri MFD 0x004f

verify_output
