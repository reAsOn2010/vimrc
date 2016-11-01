#! /bin/sh
#
# ycm.sh
# Copyright (C) 2017 yakumo <yakumo@shuushourais-MacBook-Pro.local>
#
# Distributed under terms of the MIT license.
#

# dependency git python3 brew
pushd ~/.vim_runtime/sources_non_forked/YouCompleteMe/
git submodule update --init --recursive
python3 install.py --clang-completer
popd
