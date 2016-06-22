#!/bin/ksh -p
#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source.  A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#
# Copyright 2016 Joyent, Inc.  All rights reserved.
# Copyright 2016 OmniTI Computer Consulting, Inc.  All rights reserved.
#

#
# XXX KEBE SAYS The plan is for this to become a full-blown installer script.
# The plan may change, but for now, stick a placeholder in here.
#

PATH=/bin:/usr/bin:/usr/sbin
export PATH

. /usr/lib/brand/shared/common.ksh

bad_usage() {
	echo "LX zone install bad option"
	echo "Available options are:"
	echo "	none (for now, KEBE SAYS fix me)"
	exit $ZONE_SUBPROC_USAGE
}

while getopts "R:z:" opt
do
	case "$opt" in
		R)	ZONEPATH="$OPTARG";;
		z)	ZONENAME="$OPTARG";;
		*)	bad_usage ;;
	esac
done
shift OPTIND-1

exit 0
