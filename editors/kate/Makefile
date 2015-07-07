# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD$

PORTNAME=	kate
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	editors kde # kde-applications
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE5 kate

LIB_DEPENDS=	libgit2.so:${PORTSDIR}/devel/libgit2
USE_QT5=	buildtools_build core dbus script sql widgets qmake_build
USE_KDE5=	config doctools ecm guiaddons i18n init \
		itemmodels jobwidgets kdeprefix kio \
		newstuff parts plasma-framework \
		texteditor threadweaver windowsystem \
		xmlgui
USES=		tar:xz cmake gettext pkgconfig

OPTIONS_DEFINE=	DOCS
OPTIONS_SUB=    YES

.include <bsd.port.options.mk>
.if ${PORT_OPTIONS:MDOCS}
BUILD_DEPENDS+=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml
.endif

.include <bsd.port.mk>

