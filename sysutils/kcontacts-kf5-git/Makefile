# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kcontacts-kf5-git/Makefile 10918 2015-07-21 18:19:58Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.91.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE api to manage contact information

LICENSE=	LGPL21

USE_KDE5=	ecm codecs config coreaddons i18n
USE_QT5=	buildtools_build core dbus gui qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=YES

PLIST_SUB+=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kcontacts
KDE_GIT_REVISION=	e6f31223b4f1dc38573452af446f2f92c874ecee

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
