# Created by: ijliao
# $FreeBSD$

PORTNAME=	gnupg
PORTVERSION=	0.3.9
CATEGORIES=	security python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	cs@FreeBSD.org
COMMENT=	Python wrapper for GnuPG

LICENSE=	GPLv3
GH_ACCOUNT=	vsajip
GH_PROJECT=	python-gnupg

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}psutil>=0.5.1:sysutils/py-psutil

USES=		python
USE_GITHUB=	yes
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
