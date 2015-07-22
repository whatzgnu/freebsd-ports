# $FreeBSD$

PORTNAME=	kapptemplate
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	devel kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE template generator

USE_KDE5=	ecm coreaddons configwidgets completion archive kio i18n doctools
USES=		cmake:outsource gmake tar:xz gettext
USE_QT5=	qmake_build core buildtools_build dbus declarative
BUILD_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml

.include <bsd.port.mk>
