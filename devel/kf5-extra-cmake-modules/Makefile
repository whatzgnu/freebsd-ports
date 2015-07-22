# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/kf5-extra-cmake-modules/Makefile 10891 2015-07-10 21:11:49Z tcberner $

PORTNAME=	extra-cmake-modules
CATEGORIES=	devel kde # kde-framework

COMMENT=	Extra Modules for Cmake

USE_KDE5=	kdeprefix
USES=		cmake:outsource tar:xz

CMAKE_ARGS=	-DATTICA_ENABLE_TESTS:BOOL=OFF 	\
		-DQT4_BUILD:BOOL=OFF		\
		-DBUILD_HTML_DOCS:BOOL=OFF	\
		-DBUILD_MAN_DOCS:BOOL=OFF	# do not want to depend on sphynx

INSTALL_TARGET=install # does not have install/strip target

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
