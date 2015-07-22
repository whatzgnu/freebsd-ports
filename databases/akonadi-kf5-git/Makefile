# Created by: tcberner
# $FreeBSD: branches/plasma5/KDE/databases/akonadi-kf5-git/Makefile 10916 2015-07-21 18:18:07Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	5.0.51
CATEGORIES=	databases kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Storage server for KDE-Pim

LICENSE=	LGPL21

LIB_DEPENDS=	libboost_thread.so:${PORTSDIR}/devel/boost-libs
# Let process generate meaningful backtrace on core dump.
BUILD_DEPENDS=	xsltproc:${PORTSDIR}/textproc/libxslt

CONFLICTS=	akonadi-[0-9]*

USE_KDE5=	ecm
USES=		cmake:outsource compiler:c++11-lib shared-mime-info tar:xz
USE_QT5=	buildtools_build core dbus gui network qmake_build sql widgets xml
CMAKE_ARGS+=	-DAKONADI_BUILD_TESTS:BOOL=FALSE \
		-DCMAKE_REQUIRED_INCLUDES:STRING="${LOCALBASE}/include" \
		-DQT5_BUILD:BOOL=TRUE \
		-DWITH_SOPRANO:BOOL=FALSE

USE_LDCONFIG=	yes

OPTIONS_MULTI=		DB
OPTIONS_MULTI_DB=	MYSQL PGSQL SQLITE
OPTIONS_SUB=		yes

MYSQL_DESC=		Install MySQL Qt plugin and server
MYSQL_USE=		MYSQL=server QT5=sql-mysql_run

PGSQL_DESC=		Install PostgreSQL Qt plugin
# Do not add a dependency on PostgreSQL server as someone preferring
# it over MySQL might like to use some advanced configuration, like a
# remote server.
#PGSQL_USE=	PGSQL=server
PGSQL_USE=		QT5=sql-pgsql_run

SQLITE_DESC=		Enable SQLite backend
SQLITE_USE=		SQLITE=3
SQLITE_CMAKE_ON=	-DAKONADI_BUILD_QSQLITE:BOOL=ON
SQLITE_CMAKE_OFF=	-DAKONADI_BUILD_QSQLITE:BOOL=OFF

OPTIONS_DEFAULT=	PGSQL

PLIST_SUB+=		SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	akonadi
KDE_GIT_REVISION=	3eb41245b3aaeb09f0c8aaef034ed6dead029126

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
