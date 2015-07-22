# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11/plasma5-plasma-desktop/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	plasma-desktop
CATEGORIES=	x11 kde # kde-plasma

COMMENT=	Plasma5 plasma desktop

USE_QT5=	concurrent core dbus gui network printsupport \
		qml quick svg widgets x11extras xml
USE_KDE5=	activities archive attica5 auth bookmarks codecs \
		completion config configwidgets coreaddons crash \
		dbusaddons designerplugin doctools ecm emoticons \
		globalaccel guiaddons i18n iconthemes init \
		itemmodels itemviews jobwidgets kcmutils \
		kdelibs4support kdeprefix kio kwin libksysguard \
		newstuff notifications notifyconfig parts people \
		plasma-framework plasma-workspace runner service \
		solid sonnet textwidgets unitconversion wallet \
		widgetsaddons windowsystem xmlgui

# needed for one of the source files (TODO: fetch upstream patch)
CXXFLAGS=	-ftemplate-depth=512

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

