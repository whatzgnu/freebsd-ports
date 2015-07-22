# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kidentitymanagement-kf5-git/Makefile 10915 2015-07-21 17:52:45Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.81.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE pim identities

LICENSE=	LGPL21

LIB_DEPENDS=	libKF5PimTextEdit.so:${PORTSDIR}/sysutils/kpimtextedit-kf5-git

USE_KDE5=	ecm emoticons kdelibs4support init itemmodels itemviews
USE_QT5=	buildtools_build gui qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kidentitymanagement
KDE_GIT_REVISION=	0298052bdcd09fe90832fead3eeb43558f1aa101

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
