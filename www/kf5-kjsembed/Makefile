# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/www/kf5-kjsembed/Makefile 10891 2015-07-10 21:11:49Z tcberner $

PORTNAME=	kjsembed
CATEGORIES=	www kde # kde-framework
MASTER_SITE_SUBDIR?=	stable/frameworks/${KDE_FRAMEWORKS_VERSION:R}/portingAids

COMMENT=	KF5 library for binding JavaScript objects to QObjects

USE_QT5=	core gui svg uitools widgets xml
USE_KDE5=	archive doctools ecm i18n js kdeprefix

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
