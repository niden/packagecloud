#!/usr/bin/env bash
#
# Phalcon Build Project
#
# Copyright (c) 2011-2017, Phalcon Team (https://www.phalconphp.com)
#
# This source file is subject to the New BSD License that is bundled
# with this package in the file LICENSE.txt.
#
# If you did not receive a copy of the license and are unable to
# obtain it through the world-wide-web, please send an email
# to license@phalconphp.com so we can send you a copy immediately.
#
# Authors: Phalcon Framework Team <team@phalconphp.com>
#

git clone -q --depth=1 https://github.com/phalcon/zephir.git /tmp/zephir
cd /tmp/zephir

ZEPHIRDIR="$( cd "$( dirname . )" && pwd )"
sed "s#%ZEPHIRDIR%#$ZEPHIRDIR#g" bin/zephir > bin/zephir-cmd
chmod 755 bin/zephir-cmd

mkdir -p ~/bin

cp bin/zephir-cmd ~/bin/zephir
rm bin/zephir-cmd
