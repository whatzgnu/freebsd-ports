# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/plasma5-baloo/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	baloo
PORTVERSION=	5.9.2
CATEGORIES=	sysutils kde # kde-plasma

COMMENT=	Plasma5 framework for searching and managing user metadata

LIB_DEPENDS=	libxapian.so:${PORTSDIR}/databases/xapian-core

USE_QT5=	core dbus gui network printsupport sql widgets xml
USE_KDE5=	archive attica5 auth bookmarks codecs completion config \
		configwidgets coreaddons crash dbusaddons designerplugin \
		doctools ecm emoticons globalaccel guiaddons \
		i18n iconthemes idletime init itemmodels itemviews \
		jobwidgets kcmutils kdelibs4support kdeprefix kfilemetadata5 kio \
		notifications parts service solid sonnet textwidgets \
		unitconversion widgetsaddons windowsystem xmlgui

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

PLIST_SUB+=	PORTVERSION="${PORTVERSION}"

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

