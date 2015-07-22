# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/kf5-knotifications/Makefile 10891 2015-07-10 21:11:49Z tcberner $

PORTNAME=	knotifications
CATEGORIES=	devel kde # kde-framework

COMMENT=	KF5 abstraction for system notifications

USE_QT5=	core dbus gui linguisttools phonon4 widgets x11extras xml
USE_KDE5=	auth codecs config configwidgets coreaddons dbusaddons \
		ecm guiaddons i18n iconthemes itemviews kdeprefix service \
		widgetsaddons windowsystem

LIB_DEPENDS=	libdbusmenu-qt5.so:${PORTSDIR}/devel/libdbusmenu-qt5

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
