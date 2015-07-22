# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/graphics/gwenview/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	gwenview
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	graphics # kde-applications
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	gwenview

USE_QT5=	buildtools_build core dbus qmake_build
USE_KDE5=	activities ecm emoticons init itemmodels kdelibs4support kdeprefix kdeprefix
USES=		tar:xz cmake gettext pkgconfig

LIB_DEPENDS=	libexiv2.so:${PORTSDIR}/graphics/exiv2 \
		liblcms2.so:${PORTSDIR}/graphics/lcms2

OPTIONS_DEFINE=	DOCS
OPTIONS_SUB=	YES

# Handle DOCS & NLS option and add dependencies
.include <bsd.port.options.mk>
.if ${PORT_OPTIONS:MDOCS}
BUILD_DEPENDS+=		${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
			docbook-xml>0:${PORTSDIR}/textproc/docbook-xml
.endif

.if ${PORT_OPTIONS:MNLS}
USES+=			gettext
.else
EXTRACT_AFTER_ARGS+=	--exclude ${DISTNAME}/po
.endif

.include <bsd.port.mk>

