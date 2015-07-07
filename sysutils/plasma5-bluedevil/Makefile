# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/plasma5-bluedevil/Makefile 10824 2015-06-30 21:01:56Z tcberner $

# Note: this probably does not work yet (TOOD: find out if bluez-qt works on
#       on FreeBSD or what is needed to make it work).

PORTNAME=	bluedevil
CATEGORIES=	sysutils kde # kde-plasma

COMMENT=	Plasma5 integration for Bluetooth devices

USE_QT5=	core dbus gui network qml widgets
USE_KDE5=	bluez-qt coreaddons dbusaddons iconthemes kio \
		notifications plasma-desktop widgetsaddons

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

