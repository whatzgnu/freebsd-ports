# $FreeBSD$

PORTNAME=	kbruch
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	math kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE 4 application to exercise fractions

BUILD_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml

USE_KDE5=	ecm config crash doctools i18n xmlgui
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build qmake_build widgets

.include <bsd.port.mk>
