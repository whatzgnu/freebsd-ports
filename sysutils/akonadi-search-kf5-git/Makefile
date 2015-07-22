# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/akonadi-search-kf5-git/Makefile 10926 2015-07-21 19:41:02Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	5.0.4
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Libraries and daemons to implement searching in Akonadi

LICENSE=	LGPL21

LIB_DEPENDS=	libKF5AkonadiCore.so:${PORTSDIR}/deskutils/kdepimlibs-kf5-git \
		libKF5CalendarCore.so:${PORTSDIR}/sysutils/kcalcore-kf5-git \
		libKF5Contacts.so:${PORTSDIR}/sysutils/kcontacts-kf5-git \
		libKF5Mime.so:${PORTSDIR}/sysutils/kmime-kf5-git \
		libxapian.so:${PORTSDIR}/databases/xapian-core

USE_KDE5=	config crash ecm i18n
USE_QT5=	buildtools_build core gui qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	akonadi-search
KDE_GIT_REVISION=	aaf2fbadd9f5c8f552a1033dadb4933cc387cd40

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
