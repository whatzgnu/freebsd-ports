# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/kf5-kcoreaddons/Makefile 10891 2015-07-10 21:11:49Z tcberner $

PORTNAME=	kcoreaddons
CATEGORIES=	devel kde # kde-framework

COMMENT=	KF5 addons to QtCore

USE_QT5=	core linguisttools
USE_KDE5=	ecm kdeprefix

USES=		fam shared-mime-info

OPTIONS_DEFINE=	NLS INOTIFY
OPTIONS_DEFAULT=INOTIFY
OPTIONS_SUB=	YES

INOTIFY_DESC=		Filesystem alteration notifications using inotify
INOTIFY_LIB_DEPENDS=	libinotify.so:${PORTSDIR}/devel/libinotify

post-extract:
	# Provide a cmake file to find libinotify
	${CP} ${PORTSDIR}/x11/kf5-frameworks/files/FindLibinotify.cmake \
		${WRKSRC}/cmake/

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
