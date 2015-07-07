# $FreeBSD$

PORTNAME=	kde-dev-scripts
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	devel kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE development scripts

USES=		cmake:outsource shebangfix tar:xz
USE_KDE4=	kdelibs kdeprefix automoc4
USE_QT4=	moc_build qmake_build rcc_build uic_build

SHEBANG_FILES=	cxxmetric \
		draw_lib_dependencies \
		fixkdeincludes \
		fixuifiles \
		krazy-licensecheck \
		png2mng.pl \
		svnintegrate

.include <bsd.port.mk>
