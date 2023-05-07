# Copyright 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002,
# 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014,
# 2015, 2016, 2017, 2018
# University Corporation for Atmospheric Research/Unidata.

# See netcdf-c/COPYRIGHT file for more info.

# Load only once
if test "x$TEST_COMMON_SH" = x ; then
export TEST_COMMON_SH=1

# Define location of execution
TOPSRCDIR='N:/Development/Dev_Base/netcdf-c-4.9.2'
TOPBUILDDIR='N:/Development/Dev_Base/netcdf-c-4.9.2/msvc'
FP_ISCMAKE=yes
FP_ISMSVC=yes
  FP_WINVERMAJOR=10
  FP_WINVERBUILD=19044
FP_ISCYGWIN=
FP_ISMINGW=
FP_ISMSYS=
FP_ISOSX=

FP_ISREGEDIT=
FP_USEPLUGINS=yes

# Feature flags
FEATURE_HDF5=yes
FEATURE_PARALLEL=no

# Define selected features of the build
FEATURE_HDF5=yes
FEATURE_FILTERTESTS=no
FEATURE_PLUGIN_INSTALL_DIR=
FEATURE_BYTERANGE=yes
FEATURE_S3_SDK=no
FEATURE_S3=no
FEATURE_NCZARR=yes
FEATURE_S3TESTS=no
FEATURE_NCZARR_ZIP=no

# Thredds-test server is currently disabled
#FEATURE_THREDDSTEST=1

set -e

# Figure out various locations in the src/build tree.
# This is relatively fragile code and is essentially
# specific to netcdf-c. It does, however, have the virtue
# of isolating all this nonsense into one place.
# This will get somewhat simplified (I hope) when
# we move to a separate test_utilities directory

# This code is intended to provide constants
# for accessing various objects in the src/build
# tree(s) across multiple ways of building netcdf-c.
# Currently, the following build situations are supported.
# 1. Autoconf with make check: the src and build trees are the same
# 2. Autoconf with make distcheck: the src and build trees are distinct
# 3. Cmake on a *nix platform using e.g. gcc:
#    the src and build trees are distinct.
# 4. Cmake on windows using cygwin or msys.
#    The src and build trees are distinct.
#
# For now, an explicit build using the Visual C(++) compiler
# is not supported. The big issue is the handling of executables
# and the notion of a VS configuration/build type like Debug or Release.
# When using VS, executables are placed in a subdirectory of the
# build directory. That subdirectory is named by the configuration type.
# Thus one finds ncdump.exe in $top_builddir/ncdump/Debug instead of
# $top_builddir/ncdump. An additional issue is the extension of an
# executable: .exe vs nothing. This code attempts to figure out which is used.
#
# For possible future fixes, a placeholder is left in place in the
# following code named VS. If it were set to the build type, then,
# in theory, this code would work with Visual C. It is disabled for now.
#
# The goal, then, of this common code is to set up some useful
#constants for use in test shell scripts.
# 1. srcdir - absolute path to the source dir (e.g. ${top_srcdir}/ncgen)
# 2. top_srcdir - absolute path to the root of the source
# 3. top_builddir - absolute path to the root of the build directory;
#                   may be same as top_srcdir (e.g. #1).
# 4. builddir - absolute path of th the directory into which generated
#               stuff (.nc, .cdl, etc) is stored.
# 5. execdir - absolute path of the directory into which executables are
#              placed. For all but the VS case, execdir == builddir.
#
# The following are defined to support inter-directory references.
# 6. NCDUMP - absolute path to the ncdump.exe executable
# 7. NCCOPY - absolute path to the nccopy.exe executable
# 8. NCGEN - absolute path to ncgen.exe
# 9. NCGEN3 - absolute path to ncgen3.exe
#10. NCPATHCVT - absolute path to ncpathcvt.exe

# Allow global set -x mechanism for debugging.
if test "x$SETX" = x1 ; then set -x ; fi

# On MINGW, bash and other POSIX utilities use a mounted root directory,
# but executables compiled for Windows do not recognise the mount point.
# Here we ensure that Windows paths are used in tests of Windows executables.

system=`uname`
if test "x${system##MINGW*}" = x; then
  alias pwd='pwd -W'

fi

# We assume that TOPSRCDIR and TOPBUILDDIR are defined
# At the top of this shell script
top_srcdir="$TOPSRCDIR"
top_builddir="$TOPBUILDDIR"

# Currently not used, but left as a Visual Studio placeholder.
# VS=Debug

# srcdir may or may not be defined, but if not, then create it
if test "x$srcdir" = x ; then
  # we need to figure out our directory
  # pick off the last component as the relative name of this directory
  srcdir=`pwd`
  current=`basename $srcdir`
  srcdir="${top_srcdir}/$current"
fi

# We also assume we are executing in builddir
builddir=`pwd`

# execdir is an alias for builddir
execdir="${builddir}"

# pick off the last component as the relative name of this directory
thisdir=`basename $srcdir`

WD=`pwd`
# Absolutize paths of interest
cd $srcdir; srcdir=`pwd` ; cd $WD
cd $top_srcdir; top_srcdir=`pwd` ; cd $WD
cd $builddir; builddir=`pwd` ; cd $WD
cd $top_builddir; top_builddir=`pwd` ; cd $WD
cd $execdir; execdir=`pwd` ; cd $WD

# For sun os
export srcdir top_srcdir builddir top_builddir execdir

# Figure out executable extension (probably a better way)
if test -e "${top_builddir}/ncdump${VS}/ncdump.exe" ; then
  ext=".exe"
else
  ext=""
fi

# We need to locate certain executables (and other things),
# capture absolute paths, and make visible
export NCDUMP="${top_builddir}/ncdump${VS}/ncdump${ext}"
export NCCOPY="${top_builddir}/ncdump${VS}/nccopy${ext}"
export NCGEN="${top_builddir}/ncgen${VS}/ncgen${ext}"
export NCGEN3="${top_builddir}/ncgen3${VS}/ncgen3${ext}"
export NCPATHCVT="${top_builddir}/ncdump${VS}/ncpathcvt${ext}"

# Temporary hacks (until we have a test_utils directory)
# to locate certain specific test files
ncgen3c0="${top_srcdir}/ncgen3/c0.cdl"
ncgenc0="${top_srcdir}/ncgen/c0.cdl"
ncgenc04="${top_srcdir}/ncgen/c0_4.cdl"

# Set LC_ALL
if test "x$FP_ISMSVC" = xyes || test "x$FP_ISCYGWIN" = xyes; then export LC_ALL="en_US.utf8"; fi

# Set HOME
if test "x$FP_ISMSVC" = xyes || test "x$FP_MINGW" = xyes; then
if test "x$HOME" = x ; then
HOME=`echo $USERPROFILE |tr '\\\' '/'`
export HOME
fi
fi

# Test for filter availability
avail() {
if test yes = `${execdir}/../ncdump/ncfilteravail $1` ; then return 0 ; else echo "filter $1 not available" ; return 1; fi
}

# Thredds-test is no longer available
#FEATURE_THREDDSTEST=1

# Make sure we are in builddir (not execdir)
cd $builddir

fi #TEST_COMMON_SH