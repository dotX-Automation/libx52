#!/bin/bash
# Test setting LED brightness to 0x005c

source $(dirname $0)/../common_infra.sh

expect_pattern $X52_LED_BRIGHTNESS_INDEX 0x005c

$X52CLI bri LED 0x005c

verify_output

