# $FreeBSD: head/Mk/Uses/libedit.mk 392507 2015-07-19 14:36:00Z bapt $
#
# handle dependency on the libedit port
#
# Feature:	libedit
# Usage:	USES=libedit
# Valid ARGS:	none
#
# MAINTAINER:	portmgr@FreeBSD.org

.if !defined(_INCLUDE_USES_LIBEDIT_MK)
_INCLUDE_USES_LIBEDIT_MK=	yes
.include "${USESDIR}/localbase.mk"

LIB_DEPENDS+=	libedit.so.0:${PORTSDIR}/devel/libedit
.endif
