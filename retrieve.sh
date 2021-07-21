#!/bin/bash
set -euo pipefail

source src.sh

move_files_around retrieve
sed -i '/email = /d' ${storage_dir}.gitconfig
