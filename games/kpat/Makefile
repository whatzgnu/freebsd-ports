# $FreeBSD$

PORTNAME=	kpat
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${PORTNAME}_DESC}

USE_KDE5=	ecm completion config configwidgets coreaddons \
		dbusaddons kdeclarative guiaddons i18n iconthemes \
		itemviews kio libkdegames newstuff notifyconfig \
		textwidgets widgetsaddons xmlgui libkdegames
USES=		cmake:outsource gettext shared-mime-info tar:xz
USE_QT5=	buildtools_build core gui network phonon4 \
		qmake_build qml quick svg widgets


post-patch:
	${REINPLACE_CMD} -e '/^update_xdg_mimetypes/ d' \
		${WRKSRC}/mimetypes/CMakeLists.txt

.include <${.CURDIR}/../kdegames/Makefile.common>
.include <bsd.port.mk>
