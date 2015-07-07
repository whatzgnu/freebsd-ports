# $FreeBSD$

PORTNAME=	kdesdk-kioslaves
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	devel kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	SDK related KIO slaves

LIB_DEPENDS=	libsvn_client-1.so:${PORTSDIR}/devel/subversion

USES=		cmake:outsource perl5 shebangfix tar:xz
USE_KDE4=	kdelibs kdeprefix automoc4
USE_QT4=	moc_build qmake_build rcc_build uic_build

SHEBANG_FILES=	perldoc/pod2html.pl

.include <bsd.port.mk>
