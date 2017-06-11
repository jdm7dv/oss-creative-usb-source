#!/bin/bash
#  This Source Code Form is subject to the terms of the Mozilla Public
#  License, v. 2.0. If a copy of the MPL was not distributed with this
#  file, You can obtain one at http://mozilla.org/MPL/2.0/.
(set -o igncr) 2>/dev/null && set -o igncr; # comment is needed

##
# Set any variables that my be needed higher up the chain
##
export shell_extension=

##
# Bring in the BRANCH environment variables
##
. ../all/environment.sh

export platform=solaris

# Buildbot speed-up: Bug 623609
# Debug build is compiled and tested in the deep phase, so there is no
# need to compile the debug build in the first phase, however we need
# to have a "debug" binary available for the smoke phase, since the
# debug-debugger build will trigger asserts, use the debug-debugger
# binary while running the smokes in the first phase of the build.
export shell_debug=$shell_debug_debugger

