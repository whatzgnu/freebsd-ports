# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kimap-kf5-git/Makefile 10922 2015-07-21 18:45:24Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.80.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE API for IMAP support

LICENSE=	LGPL21

LIB_DEPENDS=	libKF5Mime.so:${PORTSDIR}/sysutils/kmime-kf5-git \
		libboost_system.so:${PORTSDIR}/devel/boost-libs \
		libsasl2.so:${PORTSDIR}/security/cyrus-sasl2

USE_KDE5=	ecm coreaddons kdelibs4support
USE_QT5=	buildtools_build qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kimap
KDE_GIT_REVISION=	071e2707139da4ca61358f58894d741eb8a23ca6

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
