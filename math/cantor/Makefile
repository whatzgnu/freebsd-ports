# $FreeBSD$

PORTNAME=	cantor
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	math kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE 4 frontend to mathematical software

LIB_DEPENDS=	libspectre.so:${PORTSDIR}/print/libspectre \
		libqalculate.so:${PORTSDIR}/math/libqalculate \
		libAnalitza.so:${PORTSDIR}/math/analitza

BUILD_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml
		
USE_KDE5=	ecm config emoticons itemmodels itemviews init newstuff texteditor coreaddons archive parts pty kdelibs4support
USES=		cmake:outsource gettext pkgconfig python:2 tar:xz
USE_QT5=	core buildtools_build qmake_build xml xmlpatterns
USE_LDCONFIG=	yes

OPTIONS_DEFINE=	LUAJIT MAXIMA OCTAVE R SAGE SCILAB
OPTIONS_SUB=	yes # R LUAJIT

LUAJIT_DESC=	Build LuaJIT backend and install LuaJIT
LUAJIT_LIB_DEPENDS=	libluajit-5.1.so:${PORTSDIR}/lang/luajit
LUAJIT_CMAKE_OFF=	-DWITH_LuaJIT:BOOL=FALSE

MAXIMA_DESC=	Install Maxima
MAXIMA_RUN_DEPENDS=	maxima:${PORTSDIR}/math/maxima

OCTAVE_DESC=	Install Octave
OCTAVE_RUN_DEPENDS=	octave:${PORTSDIR}/math/octave

R_DESC=		Build R backend and install R
R_BUILD_DEPENDS=	R:${PORTSDIR}/math/R
R_RUN_DEPENDS=		R:${PORTSDIR}/math/R
# Required to set CFLAGS for -lgfortran.
R_USES=		fortran
R_CMAKE_OFF=	-DWITH_R:BOOL=FALSE

SAGE_DESC=	Install Sage
SAGE_RUN_DEPENDS=	sage:${PORTSDIR}/math/sage

SCILAB_DESC=	Install Scilab
SCILAB_RUN_DEPENDS=	scilab:${PORTSDIR}/math/scilab

post-patch:
	${REINPLACE_CMD} -e '/FIND_PROGRAM(_GFORTRAN_EXECUTABLE/s,gfortran,${FC},' \
		${WRKSRC}/cmake/FindR.cmake

.include <bsd.port.mk>
