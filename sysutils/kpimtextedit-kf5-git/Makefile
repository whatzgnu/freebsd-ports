# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kpimtextedit-kf5-git/Makefile 10914 2015-07-21 17:51:22Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.48.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE library for PIM-specific text editing utilities

LICENSE=	LGPL21

USE_KDE5=	ecm emoticons i18n init itemmodels itemviews kdelibs4support \
		kio sonnet textwidgets
USE_QT5=	buildtools_build core qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kpimtextedit
KDE_GIT_REVISION=	450811fea66ad1433b0d7b27140d0aa1147f1e6a

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
