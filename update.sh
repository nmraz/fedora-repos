#!/bin/bash

set -euo pipefail

BASE_MIRROR=rsync://mirror.in2p3.fr/pub
BASE_LOCALDIR=./mirror/base

RPMFUSION_MIRROR=rsync://ftp.fi.muni.cz/pub/linux/rpmfusion
RPMFUSION_LOCALDIR=./mirror/rpmfusion

rsync -avrPH --numeric-ids --delete --delete-after --ignore-errors --files-from=./base-dirs.txt "$@" "$BASE_MIRROR/" "$BASE_LOCALDIR/"
rsync -avrPH --numeric-ids --delete --delete-after --ignore-errors --files-from=./rpmfusion-dirs.txt "$@" "$RPMFUSION_MIRROR/" "$RPMFUSION_LOCALDIR/"
