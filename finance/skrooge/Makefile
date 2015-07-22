# $FreeBSD$

PORTNAME=	skrooge
PORTVERSION=	2.0.0
CATEGORIES=	finance kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${PORTNAME}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE personal finance manager

BUILD_DEPENDS=	xsltproc:${PORTSDIR}/textproc/libxslt
LIB_DEPENDS=	libGrantlee_Templates.so:${PORTSDIR}/devel/grantlee5 \
		libofx.so:${PORTSDIR}/finance/libofx \
		libqca-qt5.so:${PORTSDIR}/devel/qca-qt5

USES=		cmake:outsource desktop-file-utils gettext shared-mime-info tar:xz
USE_SQLITE=	yes
USE_QT5=	buildtools_build concurrent core dbus designer gui network \
		printsupport qmake_build qml script sql svg webkit widgets xml
USE_KDE5=	activities archive completion config configwidgets coreaddons dbusaddons \
		designerplugin doctools emoticons guiaddons i18n iconthemes init itemmodels itemviews \
		jobwidgets kdelibs4support kio newstuff notifications \
		notifyconfig parts runner wallet widgetsaddons windowsystem xmlgui

USE_LDCONFIG=	yes

PLIST_SUB=	SHLIB_VER=${PORTVERSION} \
		SHLIB_SHVER=${PORTVERSION:R:R} \
		GRANTLEE_VER=5.0

# Skrooge creates several empty directories due to how it calls CMake's
# install(DIRECTORY ...) function, so we need some code to remove them.
post-install:
	${FIND} ${STAGEDIR}${PREFIX}/share/skrooge/html \
		-type d -empty -delete

.include <bsd.port.mk>
