# Created by: Joe Maloney <jmaloney@ixsystems.com>
# $FreeBSD$

PORTNAME=	openrc
PORTVERSION=	0.19
DISTVERSIONSUFFIX=	.x
CATEGORIES=	sysutils

MAINTAINER=	jmaloney@ixsystems.com
COMMENT=	Dependency-based init system

LICENSE=	BSD2CLAUSE

USE_LDCONFIG=	yes
USES=		gmake pkgconfig:both
USE_GITHUB=	yes

#PKGMESSAGE=	${WRKDIR}/pkg-message
#SUB_FILES+=	pkg-message

GH_ACCOUNT=	openrc:DEFAULT pacbsd:abs freebsd:freebsd
GH_PROJECT=	abs:abs freebsd:freebsd
GH_TAGNAME=	53e9da4:abs b58cf84:freebsd

USE_RC_SUBR+=	openrc
PKGMESSAGE=	${WRKDIR}/pkg-message
SUB_FILES+=	pkg-message

STRIP=		# stripping can break openrc scripts

.include <bsd.port.pre.mk>

post-extract:
	@${MKDIR} ${WRKSRC}/src/github.com/pacbsd
	@${MKDIR} ${WRKSRC}/src/github.com/freebsd
	@${MV} ${WRKSRC_abs} ${WRKSRC}/src/github.com/pacbsd/abs
	@${MV} ${WRKSRC_freebsd} ${WRKSRC}/src/github.com/freebsd/freebsd
	@${CP} ${WRKSRC}/src/github.com/pacbsd/abs/core/openrc/init.d-cron ${WRKSRC}/src/github.com/pacbsd/abs/core/openrc/cron
	@${CP} ${WRKSRC}/src/github.com/pacbsd/abs/core/openrc/init.d-zfs ${WRKSRC}/src/github.com/pacbsd/abs/core/openrc/zfs
	@${CP} ${WRKSRC}/src/github.com/pacbsd/abs/core/openrc/init.d-zvol ${WRKSRC}/src/github.com/pacbsd/abs/core/openrc/zvol

post-configure:
	@${REINPLACE_CMD} -e 's|/sbin/openrc|/usr/local/sbin/openrc|g' ${WRKSRC}/etc/rc.in
	@${REINPLACE_CMD} -e 's|/sbin/openrc|/usr/local/sbin/openrc|g' ${WRKSRC}/etc/rc.shutdown.in
	@${REINPLACE_CMD} -e 's|/etc/init.d|/usr/local/etc/init.d|g' ${WRKSRC}/etc/rc.devd
	@${REINPLACE_CMD} -e 's|/etc/rc|/usr/local/etc/rc|g' ${WRKSRC}/src/github.com/freebsd/freebsd/sbin/init/init.c
	@${REINPLACE_CMD} -e 's|/etc/rc|/usr/local/etc/rc|g' ${WRKSRC}/src/github.com/freebsd/freebsd/sbin/init/pathnames.h
	@${REINPLACE_CMD} -e 's|/sbin/openrc-run|/usr/local/sbin/openrc-run|g' ${WRKSRC}/src/github.com/pacbsd/abs/core/openrc/zfs
	@${REINPLACE_CMD} -e 's|/sbin/openrc-run|/usr/local/sbin/openrc-run|g' ${WRKSRC}/src/github.com/pacbsd/abs/core/openrc/zvol
	@cd ${WRKSRC}/src/github.com/freebsd/freebsd/sbin/init; make
	@cd ${WRKSRC}/init.d.misc; ${GMAKE}
	@${MKDIR} ${STAGEDIR}${PREFIX}/etc/init.d/
	@${MKDIR} ${STAGEDIR}${PREFIX}/sbin/
	${INSTALL_PROGRAM} ${WRKSRC}/src/github.com/pacbsd/abs/core/openrc/cron ${STAGEDIR}${PREFIX}/etc/init.d/
	${INSTALL_PROGRAM} ${WRKSRC}/src/github.com/pacbsd/abs/core/openrc/zfs ${STAGEDIR}${PREFIX}/etc/init.d/
	${INSTALL_PROGRAM} ${WRKSRC}/src/github.com/pacbsd/abs/core/openrc/zvol ${STAGEDIR}${PREFIX}/etc/init.d/
	${INSTALL_PROGRAM} ${WRKSRC}/src/github.com/freebsd/freebsd/sbin/init/init ${STAGEDIR}${PREFIX}/sbin/

.include <bsd.port.post.mk>
