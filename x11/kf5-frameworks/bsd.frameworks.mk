# $FreeBSD: branches/plasma5/KDE/x11/kf5-frameworks/bsd.frameworks.mk 10851 2015-07-06 19:33:03Z tcberner $
#
# Collect stuff shared over [nearly] all kde5-framworks ports in one location
#

PKGNAMEPREFIX?=		kf5-

MAINTAINER?=		kde@FreeBSD.org

PORTVERSION?=		${KDE_FRAMEWORKS_VERSION}
MASTER_SITES?=		${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR?=	${KDE_FRAMEWORKS_BRANCH}/frameworks/${KDE_FRAMEWORKS_VERSION:R}
DIST_SUBDIR?=		KDE/frameworks/${KDE_FRAMEWORKS_VERSION}

LICENSE?=		LGPL20

USE_QT5+=		buildtools_build core qmake_build testlib
USES+=			cmake:outsource compiler:c++11-lib pkgconfig tar:xz
USE_LDCONFIG?=		yes

# auth installs a cmake file with a target containing whitespaces
# we need to switch to gmake for these ports
.if ${USE_KDE5:Mauth}
USES+=			gmake
.endif

# Handle DOCS & NLS option and add dependencies
.include <bsd.port.options.mk>
.if ${PORT_OPTIONS:MNLS}
BUILD_DEPENDS+=		${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
			docbook-xml>0:${PORTSDIR}/textproc/docbook-xml
.endif

.if ${PORT_OPTIONS:MNLS}
USES+=			gettext
.else
EXTRACT_AFTER_ARGS+=	--exclude ${DISTNAME}/po
.endif
