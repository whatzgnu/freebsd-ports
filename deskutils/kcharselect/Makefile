# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD$

PORTNAME=	kcharselect
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	deskutils kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Character selector for KDE

BUILD_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml

USES=		cmake:outsource gettext tar:xz
USE_KDE5=	ecm doctools i18n widgetsaddons xmlgui
USE_QT5=	buildtools_build qmake_build widgets

.include <bsd.port.mk>
