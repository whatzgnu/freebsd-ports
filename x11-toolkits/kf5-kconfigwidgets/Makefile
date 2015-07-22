# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11-toolkits/kf5-kconfigwidgets/Makefile 10891 2015-07-10 21:11:49Z tcberner $

PORTNAME=	kconfigwidgets
CATEGORIES=	x11-toolkits kde # kde-framework

COMMENT=	KF5 widgets for configuration dialogs

USES=		shebangfix

USE_QT5=	core dbus gui widgets xml
USE_KDE5=	archive auth codecs config coreaddons doctools ecm guiaddons \
		i18n kdeprefix widgetsaddons

SHEBANG_FILES=	src/preparetips5

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
