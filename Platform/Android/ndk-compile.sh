#!/bin/bash
#
#  ndk-compile.sh
#  ePub3
#
#  Created by Jim Dovey on 2013-04-11.
#  Copyright (c) 2012-2013 The Readium Foundation and contributors.
#  
#  The Readium SDK is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

if [ "$1" = "" ]; then
	echo "Usage: ndk-compile.sh <build|clean> [<path-to-ndk>]"
	echo "       You can also define a ANDROID_NDK env var to have a default for <path-to-ndk> or simply add the ndk path to your PATH env var."
	exit 1
fi

# Assign $2 to the NDK path or $ANDROID_NDK if $2 not supplied
PATH_TO_NDK=${2:-$ANDROID_NDK}

# Make sure NDK path ends with a '/'
PATH_TO_NDK=${PATH_TO_NDK%%/}/

CLEAN=""
if [ "$1" = "clean" ]; then
    CLEAN="clean"
fi

${PATH_TO_NDK}ndk-build $CLEAN -C . V=1 NDK_APPLICATION_MK=Application.mk NDK_PROJECT_PATH=`pwd` APP_BUILD_SCRIPT=Android.mk
