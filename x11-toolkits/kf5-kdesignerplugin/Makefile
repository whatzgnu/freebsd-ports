# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11-toolkits/kf5-kdesignerplugin/Makefile 10891 2015-07-10 21:11:49Z tcberner $

PORTNAME=	kdesignerplugin
CATEGORIES=	x11-toolkits kde # kde-framework

COMMENT=	KF5 integration of Frameworks widgets in Qt Designer/Creator

USE_QT5=	core dbus designer gui linguisttools network opengl \
		printsupport qml quick webkit xml
USE_KDE5=	archive attica5 auth bookmarks codecs completion config \
		configwidgets coreaddons dbusaddons doctools ecm globalaccel \
		guiaddons i18n iconthemes itemviews jobwidgets kdeprefix \
		kdewebkit kio plotting service solid sonnet textwidgets \
		widgetsaddons windowsystem xmlgui

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
