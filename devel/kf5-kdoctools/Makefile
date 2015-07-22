# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/kf5-kdoctools/Makefile 10891 2015-07-10 21:11:49Z tcberner $

PORTNAME=	kdoctools
CATEGORIES=	devel kde # kde-framework

COMMENT=	KF5 documentation generation from docbook

USE_QT5=	core
USE_KDE5=	archive ecm i18n kdeprefix
USE_GNOME=	libxml2 libxslt


RUN_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml
BUILD_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml \
		p5-URI>=0:${PORTSDIR}/net/p5-URI

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
