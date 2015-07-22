# Created by: Rusty Nejdl <rnejdl@ringofsaturn.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/filelight/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	filelight
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	sysutils kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Map of concentric segmented-rings representing file system

BUILD_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml

USE_KDE5=	coreaddons doctools ecm i18n kio parts solid xmlgui
USES=		cmake:outsource tar:xz gettext
USE_QT5=	buildtools_build core dbus qmake_build script widgets

.include <bsd.port.mk>
