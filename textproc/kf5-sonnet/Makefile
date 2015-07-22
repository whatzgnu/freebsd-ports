# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/textproc/kf5-sonnet/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	sonnet
CATEGORIES=	textproc kde # kde-framework

COMMENT=	KF5 plugin-based spell checking library

USE_QT5=	core gui linguisttools widgets
USE_KDE5=	ecm kdeprefix

OPTIONS_DEFINE=	ASPELL HUNSPELL NLS
OPTIONS_SUB=	yes

ASPELL_LIB_DEPENDS=	libaspell.so:${PORTSDIR}/textproc/aspell
HUNSPELL_LIB_DEPENDS=	libhunspell-1.3.so:${PORTSDIR}/textproc/hunspell

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
