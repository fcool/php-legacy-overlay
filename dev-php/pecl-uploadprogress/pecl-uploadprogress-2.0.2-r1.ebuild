# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

USE_PHP="php7-4 php8-0 php8-1 php8-2"
PHP_EXT_SAPIS="apache2 fpm"

inherit php-ext-pecl-r3

DESCRIPTION="An extension to track progress of a file upload"
LICENSE="PHP-3.01"
SLOT="legacy"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="examples"

PATCHES=( "${FILESDIR}/php-debug-testfix.patch" )

RDEPEND="
	php_targets_php7-4? ( !dev-php/pecl-uploadprogress:0[php_targets_php7-4] )
	php_targets_php8-0? ( !dev-php/pecl-uploadprogress:0[php_targets_php8-0] )
	php_targets_php8-1? ( !dev-php/pecl-uploadprogress:0[php_targets_php8-1] )
	php_targets_php8-2? ( !dev-php/pecl-uploadprogress:0[php_targets_php8-2] )
	php_targets_php7-4? ( || ( dev-lang/php:7.4[apache2(-),fileinfo(-)] dev-lang/php:7.4[fileinfo(-),fpm(-)] ) )
	php_targets_php8-0? ( || ( dev-lang/php:8.0[apache2(-),fileinfo(-)] dev-lang/php:8.0[fileinfo(-),fpm(-)] ) )
	php_targets_php8-1? ( || ( dev-lang/php:8.1[apache2(-),fileinfo(-)] dev-lang/php:8.1[fileinfo(-),fpm(-)] ) )
	php_targets_php8-2? ( || ( dev-lang/php:8.2[apache2(-),fileinfo(-)] dev-lang/php:8.2[fileinfo(-),fpm(-)] ) )
"
