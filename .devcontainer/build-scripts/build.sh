#!/bin/bash
set -e

# Configurable
SRC_ROOT="${SRC_ROOT:=$(pwd)}"
DEFCONFIG="${DEFCONFIG:=widora_mangopi_r3_defconfig}"
BUILDROOT_DIR="${BUILDROOT_DIR:=/workspaces/buildroot}"

# Build
cd $BUILDROOT_DIR
make BR2_EXTERNAL=$SRC_ROOT $DEFCONFIG
make source
make
