# Created by: Vsevolod Stakhov <vsevolod@highsecure.ru>
# $FreeBSD: branches/plasma5/KDE/devel/qca-qt5/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	qca-qt5
PORTVERSION=	2.1.0.3
CATEGORIES=	devel
MASTER_SITES=	http://download.kde.org/stable/${PORTNAME}/${PORTVERSION}/src/

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Cross-platform crypto API for Qt5

BUILD_DEPENDS=	${LOCALBASE}/share/certs/ca-root-nss.crt:${PORTSDIR}/security/ca_root_nss
RUN_DEPENDS=	${LOCALBASE}/share/certs/ca-root-nss.crt:${PORTSDIR}/security/ca_root_nss

USES=		cmake tar:xz
USE_LDCONFIG=	yes
USE_QT5=	buildtools_build core network qmake_build

OPTIONS_DEFINE=	GNUPG OPENSSL SASL
OPTIONS_DEFAULT=GNUPG OPENSSL
OPTIONS_SUB=	yes

CMAKE_ARGS=	-DQT5_BUILD:BOOL=TRUE \
		-DBUILD_PLUGINS=none \
		-DBUILD_TESTS:BOOL=FALSE \
		-DPKGCONFIG_INSTALL_PREFIX=${PREFIX}/libdata/pkgconfig \
		-DQCA_FEATURE_INSTALL_DIR=${QT_MKSPECDIR}/features \
		-DQCA_MAN_INSTALL_DIR=${MANPREFIX}/man


GNUPG_CMAKE_ON=		-DWITH_gnupg_PLUGIN=yes
GNUPG_RUN_DEPENDS=	gpg2:${PORTSDIR}/security/gnupg

OPENSSL_CMAKE_ON=	-DWITH_ossl_PLUGIN=yes
OPENSSL_USE=		OPENSSL=yes

SASL_CMAKE_ON=		-DWITH_cyrus-sasl_PLUGIN=yes
SASL_LIB_DEPENDS=	libsasl2.so:${PORTSDIR}/security/cyrus-sasl2

.include <bsd.port.mk>
