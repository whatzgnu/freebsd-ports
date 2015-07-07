# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/www/kf5-kjs/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kjs
PORTREVISION=	1
CATEGORIES=	www kde # kde-framework
MASTER_SITE_SUBDIR?=	stable/frameworks/${KDE_FRAMEWORKS_VERSION:R}/portingAids

COMMENT=	KF5 library providing an ECMAScript interpreter

USE_QT5=	core
USE_KDE5=	ecm doctools kdeprefix

OPTIONS_DEFINE=	DOCS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
