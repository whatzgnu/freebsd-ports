# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/kf5-ktexteditor/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	ktexteditor
CATEGORIES=	devel kde # kde-framework

COMMENT=	KF5 advanced embeddable text editor


LIB_DEPENDS=	libgit2.so:${PORTSDIR}/devel/libgit2

USE_QT5=	core dbus gui network printsupport script widgets xml
USE_KDE5=	archive attica5 auth bookmarks codecs completion config \
		configwidgets coreaddons dbusaddons ecm globalaccel \
		guiaddons i18n iconthemes itemviews jobwidgets kdeprefix \
		kio notifications parts service solid sonnet textwidgets \
		widgetsaddons windowsystem xmlgui

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
