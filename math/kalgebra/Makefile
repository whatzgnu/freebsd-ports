# $FreeBSD$

PORTNAME=	kalgebra
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	math kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE graph calculator

LIB_DEPENDS=	libAnalitza.so:${PORTSDIR}/math/analitza
BUILD_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml

CMAKE_ARGS=	-DBUILD_mobile:BOOL=FALSE
USE_GL=		glu
USE_KDE5=	ecm i18n configwidgets widgetsaddons kio doctools
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core declarative gui opengl qmake_build qml gui quick xml widgets svg opengl printsupport webkit


.include <bsd.port.mk>
