# $FreeBSD$

PORTNAME=	okteta
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	devel kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE hex editor

LIB_DEPENDS=	libqca.so:${PORTSDIR}/devel/qca

USE_KDE5=	bookmarks codecs completion \
		configwidgets dbusaddons doctools \
		ecm i18n iconthemes kcmutils kio \
		newstuff parts service \
		widgetsaddons xmlgui
USES=		cmake:outsource gettext shared-mime-info tar:xz
USE_QT5=	buildtools_build core designer \
		gui network printsupport \
		qmake_build script scripttools widgets xml
USE_LDCONFIG=	yes

post-patch:
	${REINPLACE_CMD} -e '/^update_xdg_mimetypes/ d; /SharedMimeInfo/ d' \
		${PATCH_WRKSRC}/mimetypes/CMakeLists.txt

.include <bsd.port.mk>
