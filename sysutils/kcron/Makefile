# $FreeBSD$

PORTNAME=	kcron
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	sysutils kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE task scheduler

BUILD_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml

USE_KDE5=	ecm doctools i18n iconthemes kio xmlgui
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build printsupport qmake_build widgets

.include <bsd.port.mk>
