# Changelog

All notable changes to this project will be documented in this file.

The format is based upon [Keep a Changelog].

## [Unreleased]

## [0.3.0] - 2022-12-25
### Added
- Bug report utility to make it easier to gather system and build information
  when reporting issues.
- Communication infrastructure to communicate with the daemon. This includes the
  `x52ctl` utility which can be used either interactively or non-interactively
  from a separate program.
- Links to prebuilt packages in Ubuntu PPA and Arch Linux AUR
- Ability to change mouse scroll direction. See
  [#45](https://github.com/nirenjan/libx52/issues/45)

### Changed
- Renamed project from `x52pro-linux` to `libx52`

### Fixed
- Removed dependency on `rsync` during `make install`
- Reduced default logging level of daemon to error only. See
  [#38](https://github.com/nirenjan/libx52/issues/38)
- Fixed daemon crash when disconnecting/reconnecting the joystick. See
  [#43](https://github.com/nirenjan/libx52/issues/43)

## [0.2.3] - 2021-09-20
### Added
- CI for macOS 11 (Big Sur)
- Virtual mouse driver (on Linux only)

### Fixed
- Device erratic behavior when running daemon. See
  [#33](https://github.com/nirenjan/libx52/issues/33).
- `make install` on OpenSUSE Tumbleweed. See
  [#35](https://github.com/nirenjan/libx52/issues/35).

## [0.2.2] - 2021-09-03
### Added
- IO library to read and parse events from a supported joystick.
- Event test utility which displays the events similar to evtest.
- Daemon to control and update the X52 joystick.
- Import pinelog library for daemon logging.
- Import [inih](https://github.com/benhoyt/inih) library sources for daemon
  configuration parsing.

### Changed
- Linux kernel driver to correctly handle the X52/X52 Pro. This is not required
  for users running kernels with at least the following versions:
  - 5.9+
  - 5.8.10+
  - 5.4.66+
  - 4.19.146+
- Make udev rules customizable at build time, so that the right input group can
  be used in the actual rules file. This allows systems such as openSUSE which
  use `input` as the group for input devices to behave the same as Ubuntu and
  other similar systems.
- Code layout changed to improve parallel builds.
- x52cli tests modified to use cmocka tests.

## [0.2.1] - 2020-06-28
### Added
- Connect/Disconnect methods in libx52. These allow for dynamically connecting
  or disconnecting from a supported joystick without having to reinitialize the
  library.
- Internationalization for the following:
    * libx52
    * x52test
- Doxygen generation of HTML documentation for libx52 methods.
- Tests for libx52 that run on all supported platforms.

### Changed
- libx52_init no longer fails when a supported joystick is not connected.
- Tests now use [TAP].
- Python build scripts now use Python 3.

### Fixed
- Error reporting in x52cli and x52test commands.
- Handling of very large time_t values in `libx52_set_clock`
- Secondary and tertiary clock setting when primary clock is set to local time
  and local timezone is observing daylight savings time (summer time). See
  [#20](https://github.com/nirenjan/libx52/issues/20).

## [0.2.0] - 2020-04-14
### Changed
- `libx52_init` now returns a `libx52_error_code`, and returns the
  `libx52_device` pointer in an output parameter.
- All libx52 APIs now return a `libx52_error_code` indicating the error.
- libx52 now checks the version of libusb and calls the appropriate method
  to set logging level.
- x52test has an option to not sleep between consecutive calls to the libx52
  APIs.

### Fixed
- `libx52_write_time` handling of large timezone offsets.

## [0.1.2] - 2017-08-17
### Added
- Autotools based unit tests - tests run on Linux only
- libusb mock library for use by test programs
- License file and usage clarification
- Automatic builds on Ubuntu Trusty (14.04) with both GCC and clang on Travis
- Enhanced documentation for libx52
- Support for X52 (non-Pro) version
- New raw time and date APIs for libx52
- Support raw time and date commands in x52cli
- Unicode translation points for halfwidth CJK and Katakana symbols

### Changed
- Update Python character map generator to comply with PEP-8 guidelines

### Fixed
- Compilation on OSX

## [0.1.1] - 2016-05-06
### Added
- Manpage for x52cli
- Manpages for libx52 in RONN format
- Unicode translation points for Latin, Greek and mathematical symbols
- Travis-CI based automatic compilation

### Changed
- libx52 clock API will return -EAGAIN if no update is needed.
- x52test accepts a list of tests to run, defaulting to ALL
- UTF-8 parser rewritten in Python

## [0.1.0] - 2015-12-09
### Added
- Support for semantic LED names instead of numbers in libx52
- Simpler API to control clocks
- Add documentation for X52 design and USB interface
- Add CLI application to interface with libx52
- Add test application to test all aspects of libx52
- Add API to convert UTF-8 string to X52 character map

### Changed
- Migrate project to autotools

### Deprecated
- Mark kernel driver as proof-of-concept and unsuitable for production

## [0.0.2] - 2014-10-18
### Added
- Proposed design documentation for MFD pages and input mapping

### Fixed
- Kernel module compilation on Linux v3.5 and later

## [0.0.1] - 2012-10-25
### Added
- Kernel module for Saitek X52 Pro Joystick
- First release of userspace application


[Keep a Changelog]: http://keepachangelog.com/en/1.0.0/
[Semantic Versioning]: http://semver.org/spec/v2.0.0.html
[TAP]: https://testanything.org
[Unreleased]: https://github.com/nirenjan/libx52/compare/v0.3.0...HEAD
[0.3.0]: https://github.com/nirenjan/libx52/compare/v0.2.3...v0.3.0
[0.2.3]: https://github.com/nirenjan/libx52/compare/v0.2.2...v0.2.3
[0.2.2]: https://github.com/nirenjan/libx52/compare/v0.2.1...v0.2.2
[0.2.1]: https://github.com/nirenjan/libx52/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/nirenjan/libx52/compare/v0.1.2...v0.2.0
[0.1.2]: https://github.com/nirenjan/libx52/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/nirenjan/libx52/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/nirenjan/libx52/compare/v0.0.2...v0.1.0
[0.0.2]: https://github.com/nirenjan/libx52/compare/v0.0.1...v0.0.2
[0.0.1]: https://github.com/nirenjan/libx52/releases/tag/v0.0.1
