# $FreeBSD: head/net/openntpd/Makefile 418108 2016-07-05 19:32:17Z naddy $

PORTNAME=	openntpd
PORTVERSION=	6.0p1
PORTREVISION=	1
PORTEPOCH=	2
CATEGORIES=	net
MASTER_SITES=	OPENBSD/OpenNTPD

MAINTAINER=	naddy@FreeBSD.org
COMMENT=	Network Time Protocol (NTP) daemon

LICENSE=	ISCL

USERS=		_ntp
GROUPS=		_ntp

USE_RC_SUBR=	openntpd

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-silent-rules

OPTIONS_DEFINE=		RESSL
RESSL_DESC=		SSL/TLS support via LibreSSL

OPTIONS_DEFAULT=	RESSL

# Requires libtls from LibreSSL
RESSL_USES=		ssl
.if !exists(${DESTDIR}/usr/lib/libtls.so)
RESSL_CONFIGURE_WITH=	cacert=${LOCALBASE}/etc/ssl/cert.pem
RESSL_CPPFLAGS=		-I${OPENSSLINC}
RESSL_LDFLAGS=		-L${OPENSSLLIB}
RESSL_RUN_DEPENDS=	ca_root_nss>=0:security/ca_root_nss
RESSL_BUILD_DEPENDS=	libtls.so:security/libressl
RESSL_RUN_DEPENDS=	libtls.so:security/libressl
.endif

pre-build:
	${REINPLACE_CMD} -e 's,%%PREFIX%%,${PREFIX},g' \
	    ${WRKSRC}/src/ntpd.conf.5 ${WRKSRC}/src/ntpd.8

post-stage:
	cd ${STAGEDIR}${PREFIX}/etc && ${MV} ntpd.conf ntpd.conf.sample

.include <bsd.port.pre.mk>

.if ${PORT_OPTIONS:MRESSL} && ( empty(SSL_DEFAULT:Mlibressl*) && !defined(LIBRESSL_IS_OPENSSL) )
IGNORE=	Requires LibreSSL from ports, define DEFAULT_VERSIONS+=ssl=libressl in your make.conf and rebuild everything.
.endif

.include <bsd.port.post.mk>
