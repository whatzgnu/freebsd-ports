# $FreeBSD$

PORTNAME=	kget
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	net kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE download manager

LIB_DEPENDS=	libgpgme.so:${PORTSDIR}/security/gpgme \
		libktorrent.so:${PORTSDIR}/net-p2p/libktorrent \
		libmms.so:${PORTSDIR}/net/libmms \
		libqca.so:${PORTSDIR}/devel/qca \
		libboost_thread.so:${PORTSDIR}/devel/boost-libs

# do not depend on workspace/nepomuk this way there is no conflict
# with plasma5*
CMAKE_ARGS=	-DWITH_KDE4_Workspace:BOOL=FALSE \
		-DWITH_NepomukCore:BOOL=FALSE \
		-DWITH_NepomukWidgets:BOOL=FALSE

USE_SQLITE=	yes
USE_KDE4=	kdelibs kdeprefix libkonq automoc4 ontologies
USES=		cmake:outsource tar:xz
USE_QT4=	gui sql moc_build qmake_build rcc_build uic_build
USE_LDCONFIG=	yes
MAKE_ENV=	XDG_CONFIG_HOME=/dev/null
CONFIGURE_ENV=	XDG_CONFIG_HOME=/dev/null

.include <bsd.port.mk>
