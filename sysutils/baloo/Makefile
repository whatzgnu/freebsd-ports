# $FreeBSD$

PORTNAME=	baloo
PORTVERSION=	${KDE4_VERSION}
PORTREVISION=	2
CATEGORIES=	sysutils kde
MASTER_SITES=	KDE/${KDE4_BRANCH}/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE framework for searching and managing user metadata

CONFLICTS_INSTALL=	kde-runtime-4.12.*

LIB_DEPENDS=	libxapian.so:${PORTSDIR}/databases/xapian-core \
		libqjson.so:${PORTSDIR}/devel/qjson

USE_KDE4=	kdeprefix akonadi automoc4 kdelibs kfilemetadata \
		pimlibs
USES=		cmake:outsource gmake tar:xz
USE_QT4=	corelib qmake_build moc_build rcc_build uic_build
USE_LDCONFIG=	yes

# This port only exists to provide libaries for kdepim4.
# TODO the following files are in stage dir, but do not get installed
# -- baloo_binaries are provided by sysutils/plasma5-baloo.
# etc/dbus-1/system.d/org.kde.baloo.filewatch.conf
# share/dbus-1/system-services/org.kde.baloo.filewatch.service
# share/icons/hicolor/128x128/apps/baloo.png
# share/polkit-1/actions/org.kde.baloo.filewatch.policy

.include <bsd.port.mk>
