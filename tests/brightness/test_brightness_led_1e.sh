#!/bin/bash
# Test setting LED brightness to 0x001e

source $(dirname $0)/../common_infra.sh

expect_pattern $X52_LED_BRIGHTNESS_INDEX 0x001e

$X52CLI bri LED 0x001e

verify_output

