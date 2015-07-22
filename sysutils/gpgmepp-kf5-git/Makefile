# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/gpgmepp-kf5-git/Makefile 10913 2015-07-21 17:17:15Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.79.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE C++ bindings/wrapper for gpgme

LICENSE=	LGPL21

LIB_DEPENDS=	libboost_system.so:${PORTSDIR}/devel/boost-libs \
		libgpgme.so:${PORTSDIR}/security/gpgme

USE_KDE5=	ecm
USE_QT5=	buildtools_build core qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	gpgmepp
KDE_GIT_REVISION=	00d57cb8f19bfdfba500fbd125a67f50634bd78d

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
