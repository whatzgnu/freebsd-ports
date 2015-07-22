# $FreeBSD$

PORTNAME=	kate-plugin-pate
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	editors kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DISTNAME=	kate-${PORTVERSION}
DIST_SUBDIR=	KDE/${PORTVERSION}

IGNORE=		Not ready for KF5 yet

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Support for Python plugins in Kate

USES=		cmake:outsource python tar:xz
USE_KDE5=	ecm
USE_QT5=	buildtools_build

DISTINFO_FILE=	${PORTSDIR}/editors/kate/distinfo

# cmake.mk doesn't allow to overwrite BUILD_WRKSRC for out-of-source builds
_pate_WRKSRC=	${BUILD_WRKSRC}/addons/kate/pate

do-build:
	cd ${_pate_WRKSRC} && \
		${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${_MAKE_JOBS} ${MAKE_ARGS} ${ALL_TARGET}

do-install:
	cd ${_pate_WRKSRC} && \
		${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} ${INSTALL_TARGET}

.include <bsd.port.mk>
