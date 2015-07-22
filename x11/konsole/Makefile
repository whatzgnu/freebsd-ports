# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD$

PORTNAME=	konsole
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	x11 kde # kde-applications
COMMENT=	konsole
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

USES=           tar:xz cmake gettext pkgconfig
USE_QT5=	buildtools_build core dbus gui qmake_build script scripttools sql widgets
USE_KDE5=	ecm emoticons i18n iconthemes init itemmodels \
		kdelibs4support kdeprefix kio notifications \
		notifyconfig parts pty service textwidgets \
		widgetsaddons windowsystem xmlgui

# TODO: kinfog_getfile
LDFLAGS+=	-lutil

OPTIONS_DEFINE=	DOCS
OPTIONS_SUB=	YES

# Handle DOCS & NLS option and add dependencies
.include <bsd.port.options.mk>
.if ${PORT_OPTIONS:MDOCS}
BUILD_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml
.endif

.include <bsd.port.mk>

