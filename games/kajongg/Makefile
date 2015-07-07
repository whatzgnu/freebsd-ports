# $FreeBSD$

PORTNAME=	kajongg
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${PORTNAME}_DESC}

USES=		cmake:outsource python tar:xz twisted:run
USE_KDE4=       kdelibs kdeprefix pykde4 automoc4
USE_QT4=        moc_build qmake_build rcc_build uic_build
USE_SQLITE=	3
USE_TWISTED_RUN=	yes
CMAKE_ARGS=	-DINSTALL_KAJONGG:BOOL=TRUE

.include <${.CURDIR}/../kdegames/Makefile.common>
.include <bsd.port.mk>
