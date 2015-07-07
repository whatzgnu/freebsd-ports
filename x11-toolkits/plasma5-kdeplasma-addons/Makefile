# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11-toolkits/plasma5-kdeplasma-addons/Makefile 10826 2015-07-01 11:36:33Z tcberner $

PORTNAME=	kdeplasma-addons
PORTREVISION=	2
CATEGORIES=	x11-toolkits kde # kde-framework

COMMENT=	Plasma5 addons to improve the Plasma experience

USE_QT5=	core gui linguisttools uitools widgets
USE_KDE5=	kdeclarative ecm emoticons init itemmodels kcmutils \
		kdelibs4support kdeprefix kross newstuff \
		plasma-framework runner unitconversion

OPTIONS_DEFINE=	NLS IBUS SCIM
OPTIONS_SUB=	YES

IBUS_LIB_DEPENDS=	libibus-1.0.so:${PORTSIDR}/textproc/ibus
SCIM_LIB_DEPENDS=	libscim-1.0.so:${PORTSDIR}/textproc/scim

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>
