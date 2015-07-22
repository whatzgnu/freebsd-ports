# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/plasma5-muon/Makefile 10824 2015-06-30 21:01:56Z tcberner $

# TODO: update packagekit-qt5

PORTNAME=	muon
CATEGORIES=	sysutils kde # kde-plasma

COMMENT=	Plasma5 package management tools

USE_QT5=	concurrent core dbus gui network qml quick svg widgets xml
USE_KDE5=	attica5 config configwidgets coreaddons dbusaddons \
		ecm i18n kdeclarative kdeprefix newstuff notifications \
		plasma-framework solid wallet widgetsaddons

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

