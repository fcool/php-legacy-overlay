# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PHP_EXT_ECONF_ARGS=( --enable-${PN} )
PHP_EXT_INI="yes"
PHP_EXT_NAME="${PN}"
PHP_EXT_ZENDEXT="no"
USE_PHP="php7-4 php8-0"

inherit php-ext-source-r3

DESCRIPTION="A fast drop-in replacement for the standard PHP serialize"
HOMEPAGE="https://github.com/igbinary/igbinary"
SRC_URI="https://github.com/${PN}/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

DEPEND="
        php_targets_php7-4? ( !dev-php/igbinary:0[php_targets_php7-4] )
        php_targets_php8-0? ( !dev-php/igbinary:0[php_targets_php8-0] )
"
RDEPEND="${DEPEND}"

LICENSE="BSD"
SLOT="legacy"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
