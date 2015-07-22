# $FreeBSD: branches/plasma5/KDE/games/kdegames/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	kdegames
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Games for KDE (meta port)

USE_KDE4=	kdeprefix
USES=		metaport

OPTIONS_DEFINE=	ALL ${KDE4_GAMES_ALL}
OPTIONS_DEFAULT=	ALL

.include <${.CURDIR}/Makefile.common>

.for game in ${KDE4_GAMES_ALL}
# _PORT, _DETECT, and _DESC are defined in Makefile.common
${game}_PORT?=		games/${game}
${game}_DETECT?=	${KDE4_PREFIX}/bin/${game}
${game}_DESC?=		Please fix a typo in option name/desc!
${game}_RUN_DEPENDS=	${${game}_DETECT}:${PORTSDIR}/${${game}_PORT}
ALL_RUN_DEPENDS+=	${${game}_RUN_DEPENDS}
.endfor

.include <bsd.port.mk>
