# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11-themes/plasma5-oxygen/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	oxygen
CATEGORIES=	x11-themes kde # kde-plasma

COMMENT=	Plasma5 Oxygen style

USE_QT5=	core dbus gui widgets x11extras xml
USE_KDE5=	auth codecs completion config configwidgets \
		coreaddons dbusaddons decoration ecm frameworkintegration \
		guiaddons i18n iconthemes itemviews kdeprefix \
		service widgetsaddons windowsystem

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

