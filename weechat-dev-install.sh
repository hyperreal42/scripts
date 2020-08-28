#!/usr/bin/env bash
# :author:     Jeffrey Serio <hyperreal64@pm.me>
# :date:       28 Aug 2020
# :version:    0.0.1
#
# This script downloads, builds, (c)makes, and installs the latest development
# version of weechat from Github. It also installs dependencies before hand.
#

set -euo pipefail

_weechat_dev_url="https://github.com/weechat/weechat.git"
_src_dir="$HOME/src"

declare WEECHAT_DEPS=(
  cmake ncurses-devel libcurl-devel libgcrypt-devel rubygem-asciidoctor
  gnutls-devel ca-certificates gettext-devel aspell-devel python-devel
  perl-devel ruby-devel perl-ExtUtils-Embed git git-core
)

sudo dnf install -y "${WEECHAT_DEPS[@]}"

if ! [[ -d "${_src_dir}" ]]; then
  mkdir -p "${_src_dir}"
fi 

if [[ -d "${_src_dir}/weechat" ]]; then
  rm -rf "${_src_dir}/weechat"
fi

git clone "${_weechat_dev_url}" "${_src_dir}/weechat"
cd "${_src_dir}/weechat"
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=None -DENABLE_MAN=ON -DENABLE_TCL=OFF -DENABLE_GUILE=OFF -DENABLE_JAVASCRIPT=OFF -DENABLE_PHP=OFF
make
sudo make install
