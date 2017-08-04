#!/bin/bash
# Test setting LED brightness to 0x002d

source $(dirname $0)/../common_infra.sh

expect_pattern $X52_LED_BRIGHTNESS_INDEX 0x002d

$X52CLI bri LED 0x002d

verify_output

