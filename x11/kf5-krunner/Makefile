# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11/kf5-krunner/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	krunner
CATEGORIES=	x11 kde # kde-framework
MASTER_SITE_SUBDIR?=	stable/frameworks/${KDE_FRAMEWORKS_VERSION:R}/portingAids

COMMENT=	KF5 parallelized query system

USE_QT5=	core dbus gui network qml quick widgets xml
USE_KDE5=	attica5 auth bookmarks codecs completion config \
		configwidgets coreaddons dbusaddons ecm globalaccel \
		guiaddons i18n iconthemes itemviews jobwidgets \
		kdeprefix kio plasma-framework service solid sonnet \
		textwidgets threadweaver widgetsaddons windowsystem \
		xmlgui

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
