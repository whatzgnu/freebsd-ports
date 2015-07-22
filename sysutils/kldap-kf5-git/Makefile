# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kldap-kf5-git/Makefile 10933 2015-07-21 20:48:18Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.80.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	LDAP access API for KDE

LICENSE=	LGPL21

LIB_DEPENDS=	libsasl2.so:${PORTSDIR}/security/cyrus-sasl2

USE_KDE5=	ecm completion i18n widgetsaddons
USE_QT5=	buildtools_build core gui qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_OPENLDAP=	YES
USE_LDCONFIG=	YES

PLIST_SUB+=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kldap
KDE_GIT_REVISION=	f1cc60269fb7599231286efae6a07779858a3041

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
