# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11-themes/plasma5-gtk-config/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	kde-gtk-config
PORTREVISION=	1
CATEGORIES=	x11-themes kde # kde-plasma

COMMENT=	Plasma5 GTK2 and GTK3 configurator

USE_GNOME=	gtk20 gtk30 glib20
USE_QT5=	core widgets
USE_KDE5=	archive configwidgets ecm i18n kcmutils kdeprefix newstuff

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

