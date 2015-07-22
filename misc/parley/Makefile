# $FreeBSD$

PORTNAME=	parley
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	misc kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Vocabulary trainer for KDE 4


BUILD_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml

USE_GNOME=	libxml2 libxslt

USE_KDE5=	ecm doctools coreaddons config crash i18n kio \
		newstuff notifications kross khtml sonnet \
		kcmutils xmlgui \
		libkeduvocdocument
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build concurrent core gui network \
		multimedia qmake_build svg widgets
USE_XORG=	x11 xrender

.include <bsd.port.mk>
