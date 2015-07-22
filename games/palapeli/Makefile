# $FreeBSD$

PORTNAME=	palapeli
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${PORTNAME}_DESC}

USE_KDE4=	kdelibs kdeprefix libkdegames4 automoc4
USES=		cmake:outsource shared-mime-info tar:xz
USE_QT4=	corelib gui gui \
		moc_build qmake_build rcc_build uic_build
USE_LDCONFIG=	yes

post-patch:
	${REINPLACE_CMD} -e '/^update_xdg_mimetypes/ d' \
		${WRKSRC}/mime/CMakeLists.txt

.include <${.CURDIR}/../kdegames/Makefile.common>
.include <bsd.port.mk>
