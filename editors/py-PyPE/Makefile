# $FreeBSD$

PORTNAME=		PyPE
PORTVERSION=		2.9.4
PORTREVISION=		2
CATEGORIES=		editors python
MASTER_SITES=		SOURCEFORGE
MASTER_SITE_SUBDIR=	pype
PKGNAMEPREFIX=		${PYTHON_PKGNAMEPREFIX}
#DISTNAME=		PyPE-${PORTVERSION}
EXTRACT_SUFX=		-src.zip

MAINTAINER=		whatzgnu@gmail.com
COMMENT=		PyPE (Python Programmers Editor)

LICENSE=        GPLv2

USES=           python zip dos2unix
DOS2UNIX_FILES=	changelog.txt readme.txt gpl.txt sample_alphabet.txt \
		sample_dictionary.txt plugins/parsers.py pype.py
USE_PYTHON=	distutils
USE_WX=		3.0+
WANT_WX=	3.0+
WANT_UNICODE=	yes
WX_COMPS=	wx python:build

post-patch:
	# We don't need these pre-compiled files (if any)
	( cd ${WRKSRC} && \
		${FIND} -f . \( -name "*.pyc" -or -name "*.pyw" \) -exec ${RM} {} \; )
	# Convert file to UTF-8
	( cd ${WRKSRC} && \
	for f in sample_dictionary.txt plugins/parsers.py; do \
		iconv -f ISO-8859-1 -t UTF-8 $${f} > $${f}.new && \
		${TOUCH} -r $${f} $${f}.new && \
		${MV} $${f}.new $${f}; \
	done )
	# fix references in readme.html file
	( cd ${WRKSRC} && \
		${REINPLACE_CMD} -Ee 's|^(<li><a class="reference internal" href=".+" id=")(.+)(">)(.+)(<\/a>)|\1\2\3<a name="\2">\4<\/a>\5|g' \
			-Ee 's|^(<div class="section" id=")(.+)(">)|\1\2\3<a name="\2">|g' \
			-Ee 's|^(<\/div>)|\1<\/a>|g' readme.html )
	# Remove unnecessary shebang
	( cd ${WRKSRC} && \
		${REINPLACE_CMD} -e '/^#!\//, 1d' plugins/parsers.py )
	# Directly call python (there's nonprintable chars in front of the shebang,
	# therefore we search for ^.*# and not ^#)
	( cd ${WRKSRC} && \
		${REINPLACE_CMD} -e 's|^.*#!/usr/bin/env python|#! ${PYTHON_CMD}|' pype.py )
	( cd ${WRKSRC} && \
		${CP} -p ${FILESDIR}/pype.desktop pype.desktop && \
		${REINPLACE_CMD} -e "s;PYTHONPATH;${PYTHON_SITELIBDIR};g" pype.desktop )

do-install:
	cd ${WRKSRC} && \
		${RM} setup.py && \
		${MKDIR} ${STAGEDIR}${DOCSDIR} && \
		${INSTALL_MAN} changelog.txt readme.txt readme.html gpl.txt sample_* ${STAGEDIR}${DOCSDIR}/ && \
		${MKDIR} ${STAGEDIR}${PYTHON_SITELIBDIR}/pype && \
		${INSTALL_DATA} *.py stc-styles.rc.cfg MANIFEST.in PKG-INFO readme.txt readme.html ${STAGEDIR}${PYTHON_SITELIBDIR}/pype/ && \
		${CP} -pr icons macros ${STAGEDIR}${PYTHON_SITELIBDIR}/pype/ && \
		${MKDIR} ${STAGEDIR}${PYTHON_SITELIBDIR}/pype/plugins && \
		${CP} -pr plugins/*.py ${STAGEDIR}${PYTHON_SITELIBDIR}/pype/plugins/ && \
		${MKDIR} ${STAGEDIR}${PREFIX}/bin && \
		${LN} -sf '../../..${PYTHON_SITELIBDIR}/pype/pype.py' ${STAGEDIR}${PREFIX}/bin/pype && \
		${MKDIR} ${STAGEDIR}${PREFIX}/share/applications && \
		${INSTALL_DATA} pype.desktop ${STAGEDIR}${PREFIX}/share/applications/

.include <bsd.port.mk>
