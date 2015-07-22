# $FreeBSD$

# Provide a fetch macro to get sources from kde's git repo

# Git url scheme:
# git clone git://anongit.kde.org/${KDE_GIT_PROJECT}
#
# Variables needed
# 	* KDE_GIT_PROJECT:	project name           -- default: ${PORTNAME}
#	* KDE_GIT_REVISION:	revision to checkout   -- default: master
#	* KDE_GIT_BRANCH:	the branch to checkout -- default: empty
#	* KDE_GIT_URL:		git rep url            -- default: see above

# If "KDE_GIT_FETCH" is set, the new distfile will be fetched from git.

# TODO: Make this file better =)
#       Reason for -git:
#	I want to prepare newer port versions for kdevelop/kontact/...
#       as they have KF5-versions in git -- this gives us two things
#	1) a possibly nearly qt4/kde4-free desktop
#	2) an easy testbed for future kde-application releases


.if !defined(DISTDIR)
.include <bsd.port.pre.mk>
.endif

KDE_GIT_PROJECT?=	${PORTNAME}
KDE_GIT_REVISION?=	master
KDE_GIT_URL?=		git://anongit.kde.org/${KDE_GIT_PROJECT}

DISTNAME=		${PORTNAME}-${PORTVERSION}.${KDE_GIT_REVISION}
KDE_GIT_DISTFILE=	${DISTDIR}/${DIST_SUBDIR}/${DISTNAME}.tar.xz

DIST_SUBDIR=		KDE/GIT
PKGNAMESUFFIX+=		-git

KDE_GIT_FETCH_DIR=	${WRKDIR}/git
WRKSRC=			${WRKDIR}/${KDE_GIT_PROJECT}


# To fetch/create distfile execute "make -DKDE_GIT_FETCH makesum"
.if defined(KDE_GIT_FETCH)
FETCH_DEPENDS+=		git:${PORTSDIR}/devel/git
do-fetch:
	${MKDIR} ${KDE_GIT_FETCH_DIR}                                        &&\
	cd ${KDE_GIT_FETCH_DIR}                                              &&\
	git clone ${KDE_GIT_URL}                                             &&\
	cd ${KDE_GIT_FETCH_DIR}/${KDE_GIT_PROJECT}                      &&\
	git checkout ${KDE_GIT_REVISION}                                     &&\
	mkdir -p ${DISTDIR}/${DIST_SUBDIR}                                   &&\
	cd ${KDE_GIT_FETCH_DIR}                                              &&\
	tar --exclude .git -cJf ${KDE_GIT_DISTFILE} ${KDE_GIT_PROJECT}
.endif


