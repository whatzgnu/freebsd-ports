# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kmime-kf5-git/Makefile 10917 2015-07-21 18:19:26Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.82.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Library for handling MIME data

LICENSE=	LGPL21

LIB_DEPENDS=	libboost_system.so:${PORTSDIR}/devel/boost-libs

USE_KDE5=	ecm emoticons init itemmodels itemviews kdelibs4support
USE_QT5=	buildtools_build core qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kmime
KDE_GIT_REVISION=	cbf543df67891f6a9c61bfb4c16029079acec600

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
