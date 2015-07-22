# $FreeBSD$

PORTNAME=	kaccessible
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	accessibility kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Accessibility services for KDE

LIB_DEPENDS=	libspeechd.so:${PORTSDIR}/accessibility/speech-dispatcher

USE_KDE4=	kdelibs kdeprefix automoc4
USES=		cmake:outsource tar:xz
USE_QT4=	corelib dbus gui xml \
		qmake_build moc_build rcc_build uic_build

.include <bsd.port.mk>
