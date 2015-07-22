# $FreeBSD$

# sed -i .bak_kde\
#      -e '/defined(USE_KDE4)/ s#$# || defined(USE_KDE5)#g'\
#      -e '/defined(KDE4_BUILDENV)/ s#$# || defined(KDE5_BUILDENV)#g'\
#      -e 's#bsd.kde4.mk#bsd.kde.mk#g'\
#      bsd.port.mk

.if !defined(_POSTMKINCLUDED) && !defined(Kde_Pre_Include)

# Please make sure all changes to this file are past through the maintainer.
# Do not commit them yourself (unless of course you're the Port's Wraith ;).
Kde_Include_MAINTAINER=	kde@FreeBSD.org
Kde_Pre_Include=	bsd.kde.mk

#
# This file contains some variable definitions that are supposed to make your
# life easier when dealing with ports related to the KDE Software Compilation 4
# and KDE Frameworks and Plasma 5.
# It's automatically included when ${USE_KDE4} respectively ${USE_KDE5} is
# defined in a port's Makefile.
#
# KDE4 related ports can use this as follows:
#
# USE_KDE4=		kdelibs kdeprefix
# USE_QT4=		corelib # Set Qt 4 components here.
#
# KDE5 related ports on the other hand use:
# USE_KDE5=		# used frameworks/plasma components here
# USE_QT5=		# used Qt 5 components here
#
# .include <bsd.port.mk>
#
# Additionally, '_build' and '_run' suffixes can be used to force components
# dependency type (e.g., 'marble_run'). If no suffix is set, a default
# dependency type will be used. If you want to force both types, add the
# component twice with both suffixes (e.g., 'pykde4_build pykde4_run').
#
# Available KDE4 components are:
#
# baloo			- Baloo core libraries
# baloo-widgets		- Baloo widgets library
# baseapps		- Basic applications for KDE Desktop
# kactivities           - KDE activities library
# kate			- KDE text editor framework
# kdelibs		- KDE Developer Platform
# kdeprefix		- If set, port will be installed into ${KDE_PREFIX} instead of
#			  ${LOCALBASE}
# kfilemetadata		- KDE library for extracting file metadata
# korundum		- KDE Ruby bindings
# libkcddb		- KDE CDDB library
# libkcompactdisc	- KDE library for interfacing with audio CDs
# libkdcraw		- KDE LibRaw library
# libkdeedu		- Libraries used by KDE educational applications
# libkdegames		- Libraries used by KDE games
# libkexiv2		- KDE Exiv2 library
# libkipi		- KDE Image Plugin Interface
# libkonq		- Konqueror core library
# libksane		- KDE SANE library
# marble		- KDE virtual globe
# okular		- KDE universal document viewer
# nepomuk-core		- Nepomuk core libraries
# nepomuk-widgets	- Nepomuk widgets library
# oxygen		- KDE icon theme
# perlkde		- KDE Perl bindings
# perlqt		- Qt 4 Perl bindings
# pimlibs		- KDE-Pim libraries
# pykde4		- KDE Python bindings
# pykdeuic4		- PyKDE user interface compiler
# qtruby		- Qt 4 Ruby bindings
# runtime		- Components required by many KDE Applications
# smokegen		- SMOKE base libraries
# smokekde		- KDE SMOKE libraries
# smokeqt		- Qt 4 SMOKE libraries
# workspace		- KDE user environments
# akonadi		- Storage server for KDE-Pim
# attica		- Qt library implementing Open Collaboration Services API
# automoc4		- Automatic moc for Qt 4 packages
# ontologies		- Shared ontologies for semantic searching
# qimageblitz		- KDE graphical effects and filters library
# soprano		- Qt 4 RDF framework
# strigi		- Desktop search daemon
#
# These read-only variables can be used in a port's Makefile:
#
# KDE_PREFIX		- The place where KDE4 ports live. Currently it is
#			  ${LOCALBASE}/kde4, but this could change in the future.
#
# TODO LIST OF KDE5-COMPONENTS AND DESCRIPTIONS

KDE4_VERSION?=		4.14.3
KDE4_KDELIBS_VERSION=	4.14.10
KDE4_ACTIVITES_VERSION=	4.13.3
KDE4_WORKSPACE_VERSION=	4.11.21
KDE4_BRANCH?=		stable
KTP_VERSION?=		0.8.0
KTP_BRANCH?=		stable
CALLIGRA_VERSION?=	2.9.6
CALLIGRA_BRANCH?=	stable
KDEVELOP_VERSION?=	4.7.1
KDEVELOP_BRANCH?=	stable
KDEPIM_VERSION?=	4.14.10

KDE_PLASMA_VERSION?=		5.3.2
KDE_PLASMA_BRANCH?=           	stable

KDE_FRAMEWORKS_VERSION?=	5.12.0
KDE_FRAMEWORKS_BRANCH?= 	stable

KDE_APPLICATIONS_VERSION?=	15.04.3
KDE_APPLICATIONS_BRANCH?=	stable

KDE_PREFIX?=	${LOCALBASE}

# TODO: replace KDE4_PREFIX everywhere (Makefiles) by KDE_PREFIX
KDE4_PREFIX=	${KDE_PREFIX}
KDE5_PREFIX=	${KDE_PREFIX}

# Install kde4 headers into ${LOCALBASE}/${KDE4_HEADER_PREFIX} to avoid the
# inevitable compile errors if -I${LOCALBASE}/include is added in kf5/plasma5
# ports.
KDE4_HEADER_PREFIX=kde4

# TODO: do this better
.if defined(USE_KDE4)
_KDE_VERSION=KDE4
.else
_KDE_VERSION=KDE5
USES+=		compiler:c++11-lib
.endif

# Help cmake to find files when testing ports with non-default PREFIX
CMAKE_ARGS+=	-DCMAKE_PREFIX_PATH="${LOCALBASE};${KDE_PREFIX}" \
		-D${_KDE_VERSION}_BUILD_TESTS:BOOL=OFF

.if defined(USE_KDE5)
CMAKE_ARGS+=	-DBUILD_TESTING:BOOL=OFF \
		-DCMAKE_MODULE_PATH="${KDE_PREFIX};${LOCALBASE}" \
		-DCMAKE_INSTALL_PREFIX="${KDE_PREFIX}"
.endif

# set man-page prefix
CMAKE_ARGS+=	-DKDE_INSTALL_MANDIR:PATH="${KDE_PREFIX}/man" \
		-DMAN_INSTALL_DIR:PATH="${KDE_PREFIX}/man"

# ${PREFIX} and ${NO_MTREE} have to be defined in the pre-makefile section.
.if defined(USE_${_KDE_VERSION}) && ${USE_${_KDE_VERSION}:Mkdeprefix} != ""
. if ${.MAKEFLAGS:MPREFIX=*} == ""
PREFIX=		${KDE_PREFIX}
.  if ${KDE_PREFIX} != ${LOCALBASE}
NO_MTREE=	yes
.  endif
. endif
.endif


PLIST_SUB+=	KDE_APPLICATIONS_VERSION="${KDE_APPLICATIONS_VERSION}"
PLIST_SUB+=	KDE_APPLICATIONS_VERSION_MAJOR="${KDE_APPLICATIONS_VERSION:R:R}"
.if defined(USE_KDE4)
PLIST_SUB+=     KDE_PREFIX="${KDE_PREFIX}" \
                KDE4_VERSION="${KDE4_VERSION}" \
                KDE4_GENERIC_LIB_VERSION=${KDE4_KDELIBS_VERSION} \
                KDE4_NON_GENERIC_LIB_VERSION=${KDE4_KDELIBS_VERSION:S,^4,5,}
.else
PLIST_SUB+=	KDE_PREFIX="${KDE_PREFIX}" \
		KDE_PLASMA_VERSION="${KDE_PLASMA_VERSION}" \
		KDE_FRAMEWORKS_VERSION="${KDE_FRAMEWORKS_VERSION}" \
		KDE5_GENERIC_LIB_VERSION=${KDE_PLASMA_VERSION}
.endif

# Keep in sync with cmake/modules/PythonMacros.cmake
_PYTHON_SHORT_VER=	${PYTHON_VERSION:S/^python//:S/.//}
.if ${_PYTHON_SHORT_VER} > 31
PLIST_SUB+=	PYCACHE="__pycache__/" \
		PYC_SUFFIX=cpython-${_PYTHON_SHORT_VER}.pyc \
		PYO_SUFFIX=cpython-${_PYTHON_SHORT_VER}.pyo
.else
PLIST_SUB+=	PYCACHE="" \
		PYC_SUFFIX=pyc \
		PYO_SUFFIX=pyo
.endif

.endif # !defined(_POSTMKINCLUDED) && !defined(Kde_Pre_Include)

.if defined(_POSTMKINCLUDED) && !defined(Kde_Post_Include)

Kde_Post_Include=	bsd.kde.mk

#
# KDE4 components.
# Set ${component}_TYPE to 'build' or 'run' to specify default dependency type
# for ${component}; otherwise, it will default to 'build run'.
#
# TODO: this is a bit chaotic... and does not make alot of sense at the moment...
_USE_KDE_EITHER_ALL=	icons-oxygen libkdegames libkeduvocdocument

_USE_KDE4_ALL=		baloo baloo-widgets \
			baseapps kactivities kate kdelibs kfilemetadata \
			korundum libkcddb libkcompactdisc libkdcraw libkdegames4 libkdeedu \
			libkexiv2 libkipi libkonq libksane marble \
			nepomuk-core nepomuk-widgets \
			okular perlkde perlqt pimlibs pykde4 pykdeuic4 \
			qtruby runtime smokegen smokekde smokeqt \
			workspace
# These components are not part of the Software Compilation.
_USE_KDE4_ALL+=		akonadi attica automoc4 ontologies qimageblitz soprano \
			strigi
# Meta components
_USE_KDE4_ALL+=		kdeprefix ${_USE_KDE_EITHER_ALL}
# Deprecated
_USE_KDE4_ALL+=		kdehier

_USE_KDE5_FRAMEWORKS_ALL=	ecm activities archive attica5 auth	\
				bookmarks kcmutils codecs completion 	\
				config configwidgets coreaddons 	\
				crash dbusaddons kdeclarative kded 	\
				kdelibs4support designerplugin 		\
				kdesu kdewebkit dnssd doctools 		\
				emoticons frameworkintegration 		\
				globalaccel guiaddons khtml i18n 	\
				iconthemes idletime imageformats 	\
				init kcmutils kio itemmodels itemviews 	\
				jobwidgets js jsembed kpackage newstuff \
				notifications notifyconfig parts people \
				plasma-framework plotting pty kross 	\
				runner service solid sonnet 		\
				texteditor textwidgets threadweaver	\
				unitconversion wallet widgetsaddons	\
				windowsystem xmlgui xmlrpcclient
_USE_KDE5_PLASMA_ALL=		baloo5 bluez-qt bluedevil breeze        \
				decoration kde-cli-tools 	        \
				kfilemetadata5 helpcenter hotkeys 	\
				infocenter kio-extras libkscreen 	\
				libksysguard kmenuedit milou oxygen 	\
				oxygen-fonts plasma-desktop 		\
				plasma-workspace powerdevil 		\
				ksysguard systemsettings kwin kwrited	\
				kdeplasma-addons 		\
				plasma-workspace-wallpapers wayland

_USE_KDE5_ALL=			kdeprefix			\
				${_USE_KDE5_FRAMEWORKS_ALL} 	\
				${_USE_KDE5_PLASMA_ALL}		\
				${_USE_KDE_EITHER_ALL}

baloo_PORT=		sysutils/baloo
baloo_PATH=		${KDE_PREFIX}/lib/libbaloocore.so

baloo-widgets_PORT=	sysutils/baloo-widgets
baloo-widgets_PATH=	${KDE_PREFIX}/lib/libbaloowidgets.so

baseapps_PORT=		x11/kde4-baseapps
baseapps_PATH=		${KDE_PREFIX}/bin/kfmclient
baseapps_TYPE=		run

kactivities_PORT=	x11/kactivities
kactivities_PATH=	${KDE_PREFIX}/lib/libkactivities.so

kate_PORT=		editors/kate
kate_PATH=		${KDE_PREFIX}/lib/libkdeinit5_kate.so

kdelibs_PORT=		x11/kdelibs4
kdelibs_PATH=		${KDE_PREFIX}/lib/libkdecore.so

# .if ${KDE_PREFIX} != ${LOCALBASE}
# kdeprefix_PORT=		misc/kdehier4
# kdeprefix_PATH=		kdehier4>=1.3
# kdeprefix_TYPE=		run
# .endif

kfilemetadata_PORT=	sysutils/kfilemetadata
kfilemetadata_PATH=	${KDE_PREFIX}/lib/libkfilemetadata.so

korundum_PORT=		devel/ruby-korundum
korundum_PATH=		${KDE_PREFIX}/lib/kde4/krubypluginfactory.so
korundum_TYPE=		run

libkcddb_PORT=		audio/libkcddb
libkcddb_PATH=		${KDE_PREFIX}/lib/libkcddb.so

libkcompactdisc_PORT=	audio/libkcompactdisc
libkcompactdisc_PATH=	${KDE_PREFIX}/lib/libkcompactdisc.so

libkdcraw_PORT=		graphics/libkdcraw
libkdcraw_PATH=		${KDE_PREFIX}/lib/libkdcraw.so

libkdeedu_PORT=		misc/libkdeedu
libkdeedu_PATH=		${KDE_PREFIX}/lib/libkeduvocdocument.so

libkdegames_PORT=	games/libkdegames
libkdegames_PATH=	${KDE_PREFIX}/lib/libKF5KDEGames.so

libkdegames4_PORT=	games/libkdegames4
libkdegames4_PATH=	${KDE_PREFIX}/lib/libkdegames.so

libkeduvocdocument_PORT=	misc/libkeduvocdocument
libkeduvocdocument_PATH=	${KDE_PREFIX}/lib/libKEduVocDocument.so

libkexiv2_PORT=		graphics/libkexiv2
libkexiv2_PATH=		${KDE_PREFIX}/lib/libkexiv2.so

libkipi_PORT=		graphics/libkipi
libkipi_PATH=		${KDE_PREFIX}/lib/libkipi.so

libkonq_PORT=		x11/libkonq
libkonq_PATH=		${KDE_PREFIX}/lib/libkonq.so

libksane_PORT=		graphics/libksane
libksane_PATH=		${KDE_PREFIX}/lib/libksane.so

marble_PORT=		astro/marble
marble_PATH=		${KDE_PREFIX}/lib/libmarblewidget.so

nepomuk-core_PORT=	sysutils/nepomuk-core
nepomuk-core_PATH=	${KDE_PREFIX}/lib/libnepomukcore.so

nepomuk-widgets_PORT=	sysutils/nepomuk-widgets
nepomuk-widgets_PATH=	${KDE_PREFIX}/lib/libnepomukwidgets.so

okular_PORT=		graphics/okular
okular_PATH=		${KDE_PREFIX}/lib/libokularcore.so

perlkde_PORT=		devel/p5-perlkde
perlkde_PATH=		${KDE_PREFIX}/lib/kde4/kperlpluginfactory.so
perlkde_TYPE=		run

perlqt_PORT=		devel/p5-perlqt
perlqt_PATH=		${KDE_PREFIX}/bin/puic4

pimlibs_PORT=		deskutils/kdepimlibs4
pimlibs_PATH=		${KDE_PREFIX}/lib/libkpimutils.so

pykde4_PORT=		devel/py-pykde4
pykde4_PATH=		${KDE_PREFIX}/lib/kde4/kpythonpluginfactory.so
pykde4_TYPE=		run

pykdeuic4_PORT=		devel/py-pykdeuic4
pykdeuic4_PATH=		${LOCALBASE}/bin/pykdeuic4
pykdeuic4_TYPE=		run

qtruby_PORT=		devel/ruby-qtruby
qtruby_PATH=		${KDE_PREFIX}/lib/libqtruby4shared.so

runtime_PORT=		x11/kde4-runtime
runtime_PATH=		${KDE_PREFIX}/bin/knotify4
runtime_TYPE=		run

smokegen_PORT=		devel/smokegen
smokegen_PATH=		${KDE_PREFIX}/lib/libsmokebase.so

smokekde_PORT=		devel/smokekde
smokekde_PATH=		${KDE_PREFIX}/lib/libsmokekdecore.so

smokeqt_PORT=		devel/smokeqt
smokeqt_PATH=		${KDE_PREFIX}/lib/libsmokeqtcore.so

workspace_PORT=		x11/kde4-workspace
workspace_PATH=		${KDE_PREFIX}/lib/libkworkspace.so

akonadi_PORT=		databases/akonadi
akonadi_PATH=		${KDE_PREFIX}/lib/libakonadiprotocolinternals.so

attica_PORT=		x11-toolkits/attica
attica_PATH=		${LOCALBASE}/lib/libattica.so

automoc4_PORT=		devel/automoc4
automoc4_PATH=		${LOCALBASE}/bin/automoc4
automoc4_TYPE=		build

ontologies_PORT=	x11-toolkits/shared-desktop-ontologies
ontologies_PATH=	${LOCALBASE}/share/ontology/core/rdf.ontology

qimageblitz_PORT=	x11/qimageblitz
qimageblitz_PATH=	${LOCALBASE}/lib/libqimageblitz.so

soprano_PORT=		textproc/soprano
soprano_PATH=		${LOCALBASE}/lib/libsoprano.so

strigi_PORT=		deskutils/libstreamanalyzer
strigi_PATH=		${LOCALBASE}/lib/libstreamanalyzer.so.0

ecm_PORT=		devel/kf5-extra-cmake-modules
ecm_PATH=		${KDE_PREFIX}/share/ECM/cmake/ECMConfig.cmake

attica5_PORT=		x11-toolkits/kf5-attica
attica5_PATH=		${KDE_PREFIX}/lib/libKF5Attica.so

bluez-qt_PORT=		sysutils/plasma5-bluez-qt
bluez-qt_PATH=		${KDE_PREFIX}/lib/libKF5BluezQt.so

bluedevil_PORT=		sysutils/plasma5-bluedevil
bluedevil_PATH=		${KDE_PREFIX}/bin/bluedevil-sendfile

kpackage_PORT=          devel/kf5-kpackage
kpackage_PATH=          ${KDE_PREFIX}/lib/libKF5Package.so

config_PORT=		devel/kf5-kconfig
config_PATH=		${KDE_PREFIX}/lib/libKF5ConfigCore.so

i18n_PORT=		devel/kf5-ki18n
i18n_PATH=		${KDE_PREFIX}/lib/libKF5I18n.so

dbusaddons_PORT=	devel/kf5-kdbusaddons
dbusaddons_PATH=	${KDE_PREFIX}/lib/libKF5DBusAddons.so

windowsystem_PORT=	x11/kf5-kwindowsystem
windowsystem_PATH=	${KDE_PREFIX}/lib/libKF5WindowSystem.so

coreaddons_PORT=	devel/kf5-kcoreaddons
coreaddons_PATH=	${KDE_PREFIX}/lib/libKF5CoreAddons.so

crash_PORT=		devel/kf5-kcrash
crash_PATH=		${KDE_PREFIX}/lib/libKF5Crash.so

archive_PORT=		archivers/kf5-karchive
archive_PATH=		${KDE_PREFIX}/lib/libKF5Archive.so

doctools_PORT=		devel/kf5-kdoctools
doctools_PATH=		${KDE_PREFIX}/bin/meinproc5

service_PORT=		devel/kf5-kservice
service_PATH=		${KDE_PREFIX}/bin/kbuildsycoca5

guiaddons_PORT=		x11-toolkits/kf5-kguiaddons
guiaddons_PATH=		${KDE_PREFIX}/lib/libKF5GuiAddons.so

auth_PORT=		devel/kf5-kauth
auth_PATH=		${KDE_PREFIX}/lib/libKF5Auth.so

codecs_PORT=            textproc/kf5-kcodecs
codecs_PATH=            ${KDE_PREFIX}/lib/libKF5Codecs.so

widgetsaddons_PORT=	x11-toolkits/kf5-kwidgetsaddons
widgetsaddons_PATH=	${KDE_PREFIX}/lib/libKF5WidgetsAddons.so

configwidgets_PORT=	x11-toolkits/kf5-kconfigwidgets
configwidgets_PATH=	${KDE_PREFIX}/lib/libKF5ConfigWidgets.so

itemviews_PORT=		x11-toolkits/kf5-kitemviews
itemviews_PATH=		${KDE_PREFIX}/lib/libKF5ItemViews.so

solid_PORT=		devel/kf5-solid
solid_PATH=		${KDE_PREFIX}/lib/libKF5Solid.so

jobwidgets_PORT=	x11-toolkits/kf5-kjobwidgets
jobwidgets_PATH=	${KDE_PREFIX}/lib/libKF5JobWidgets.so

iconthemes_PORT=	x11-themes/kf5-kiconthemes
iconthemes_PATH=	${KDE_PREFIX}/lib/libKF5IconThemes.so

completion_PORT=	x11-toolkits/kf5-kcompletion
completion_PATH=	${KDE_PREFIX}/lib/libKF5Completion.so

sonnet_PORT=    	textproc/kf5-sonnet
sonnet_PATH=	        ${KDE_PREFIX}/lib/libKF5SonnetCore.so

textwidgets_PORT=	x11-toolkits/kf5-ktextwidgets
textwidgets_PATH=	${KDE_PREFIX}/lib/libKF5TextWidgets.so

globalaccel_PORT=	x11/kf5-kglobalaccel
globalaccel_PATH=       ${KDE_PREFIX}/lib/libKF5GlobalAccel.so

xmlgui_PORT=		x11-toolkits/kf5-kxmlgui
xmlgui_PATH=		${KDE_PREFIX}/lib/libKF5XmlGui.so

xmlrpcclient_PORT=	net/kf5-kxmlrpcclient
xmlrpcclient_PATH=	${KDE_PREFIX}/lib/libKF5XmlRpcClient.so

bookmarks_PORT=		devel/kf5-kbookmarks
bookmarks_PATH=		${KDE_PREFIX}/lib/libKF5Bookmarks.so

notifications_PORT=	devel/kf5-knotifications
notifications_PATH=	${KDE_PREFIX}/lib/libKF5Notifications.so

wallet_PORT=		sysutils/kf5-kwallet
wallet_PATH=		${KDE_PREFIX}/lib/libKF5Wallet.so

kio_PORT=		devel/kf5-kio
kio_PATH=		${KDE_PREFIX}/lib/libKF5KIOCore.so

activities_PORT=	x11/kf5-kactivities
activities_PATH=	${KDE_PREFIX}/lib/libKF5Activities.so

kcmutils_PORT=		devel/kf5-kcmutils
kcmutils_PATH=		${KDE_PREFIX}/lib/libKF5KCMUtils.so

unitconversion_PORT=	devel/kf5-kunitconversion
unitconversion_PATH=	${KDE_PREFIX}/lib/libKF5UnitConversion.so

init_PORT=		x11/kf5-kinit
init_PATH=		${KDE_PREFIX}/bin/kdeinit5

parts_PORT=		devel/kf5-kparts
parts_PATH=		${KDE_PREFIX}/lib/libKF5Parts.so

people_PORT=		devel/kf5-kpeople
people_PATH=		${KDE_PREFIX}/lib/libKF5People.so

plotting_PORT=		graphics/kf5-kplotting
plotting_PATH=		${KDE_PREFIX}/lib/libKF5Plotting.so

kdewebkit_PORT=		www/kf5-kdewebkit
kdewebkit_PATH=		${KDE_PREFIX}/lib/libKF5WebKit.so

designerplugin_PORT=	x11-toolkits/kf5-kdesignerplugin
designerplugin_PATH=	${KDE_PREFIX}/lib/plugins/designer/kf5widgets.so

kdeclarative_PORT=	devel/kf5-kdeclarative
kdeclarative_PATH=	${KDE_PREFIX}/lib/libKF5Declarative.so

kded_PORT=		x11/kf5-kded
kded_PATH=		${KDE_PREFIX}/lib/libkdeinit5_kded5.so

kdelibs4support_PORT=	x11/kf5-kdelibs4support
kdelibs4support_PATH=	${KDE_PREFIX}/lib/libKF5KDELibs4Support.so

dnssd_PORT=		dns/kf5-kdnssd
dnssd_PATH=		${KDE_PREFIX}/lib/libKF5DNSSD.so

emoticons_PORT=		x11-themes/kf5-kemoticons
emoticons_PATH=		${KDE_PREFIX}/lib/libKF5Emoticons.so

js_PORT=		www/kf5-kjs
js_PATH=		${KDE_PREFIX}/lib/libKF5JS.so

khtml_PORT=		www/kf5-khtml
khtml_PATH=		${KDE_PREFIX}/lib/libKF5KHtml.so

jsembed_PORT=		www/kf5-kjsembed
jsembed_PATH=		${KDE_PREFIX}/lib/libKF5JsEmbed.so

itemmodels_PORT=	devel/kf5-kitemmodels
itemmodels_PATH=	${KDE_PREFIX}/lib/libKF5ItemModels.so

idletime_PORT=		devel/kf5-kidletime
idletime_PATH=		${KDE_PREFIX}/lib/libKF5IdleTime.so

newstuff_PORT=		devel/kf5-knewstuff
newstuff_PATH=		${KDE_PREFIX}/lib/libKF5NewStuff.so

notifyconfig_PORT=	devel/kf5-knotifyconfig
notifyconfig_PATH=	${KDE_PREFIX}/lib/libKF5NotifyConfig.so

frameworkintegration_PORT=	x11/kf5-frameworkintegration
frameworkintegration_PATH=	${KDE_PREFIX}/lib/libKF5Style.so

pty_PORT=		devel/kf5-kpty
pty_PATH=		${KDE_PREFIX}/lib/libKF5Pty.so

kdesu_PORT=		security/kf5-kdesu
kdesu_PATH=		${KDE_PREFIX}/lib/libKF5Su.so

kross_PORT=		lang/kf5-kross
kross_PATH=		${KDE_PREFIX}/lib/libKF5KrossCore.so

texteditor_PORT=	devel/kf5-ktexteditor
texteditor_PATH=	${KDE_PREFIX}/lib/libKF5TextEditor.so

threadweaver_PORT=	devel/kf5-threadweaver
threadweaver_PATH=	${KDE_PREFIX}/lib/libKF5ThreadWeaver.so

plasma-framework_PORT=	x11/kf5-plasma-framework
plasma-framework_PATH=	${KDE_PREFIX}/lib/libKF5Plasma.so

imageformats_PORT=	graphics/kf5-kimageformats
imageformats_PATH=	${KDE_PREFIX}/lib/plugins/imageformats/kimg_xcf.so

runner_PORT=		x11/kf5-krunner
runner_PATH=		${KDE_PREFIX}/lib/libKF5Runner.so

libksysguard_PORT=	sysutils/plasma5-libksysguard
libksysguard_PATH=	${KDE_PREFIX}/lib/libksgrd.so

baloo5_PORT=		sysutils/plasma5-baloo # TODO: this should probably get a better name
baloo5_PATH=		${KDE_PREFIX}/lib/libKF5Baloo.so

kwin_PORT=              x11-wm/plasma5-kwin
kwin_PATH=              ${KDE_PREFIX}/bin/kwin_x11

kfilemetadata5_PORT=	devel/plasma5-kfilemetadata
kfilemetadata5_PATH=	${KDE_PREFIX}/lib/libKF5FileMetaData.so

helpcenter_PORT=	sysutils/plasma5-khelpcenter
helpcenter_PATH=	${KDE_PREFIX}/bin/khelpcenter

kde-cli-tools_PORT=	sysutils/plasma5-kde-cli-tools
kde-cli-tools_PATH=	${KDE_PREFIX}/bin/kcmshell5

kio-extras_PORT=	devel/plasma5-kio-extras
kio-extras_PATH=	${KDE_PREFIX}/lib/libmolletnetwork5.so.5

breeze_PORT=		x11-themes/plasma5-breeze
breeze_PATH=		${KDE_PREFIX}/share/QtCurve/Breeze.qtcurve

libkscreen_PORT=	x11/plasma5-libkscreen
libkscreen_PATH=	${KDE_PREFIX}/lib/libKF5Screen.so

kwrited_PORT=		devel/plasma5-kwrited
kwrited_PATH=		${KDE_PREFIX}/lib/plugins/kded_kwrited.so

systemsettings_PORT=	sysutils/plasma5-systemsettings
systemsettings_PATH=	${KDE_PREFIX}/bin/systemsettings5

oxygen_PORT= 		x11-themes/plasma5-oxygen
oxygen_PATH=		${KDE_PREFIX}/lib/liboxygenstyle5.so

kmenuedit_PORT=		sysutils/plasma5-kmenuedit
kmenuedit_PATH=		${KDE_PREFIX}/lib/libkdeinit5_kmenuedit.so

plasma-workspace_PORT=	x11/plasma5-plasma-workspace
plasma-workspace_PATH=	${KDE_PREFIX}/lib/libkworkspace5.so

plasma-desktop_PORT=	x11/plasma5-plasma-desktop
plasma-desktop_PATH=	${KDE_PREFIX}/bin/krdb

hotkeys_PORT=		devel/plasma5-khotkeys
hotkeys_PATH=		${KDE_PREFIX}/lib/plugins/kcm_hotkeys.so

powerdevil_PORT=	sysutils/plasma5-powerdevil
powerdevil_PATH=	${KDE_PREFIX}/lib/libpowerdevilcore.so

ksysguard_PORT=		sysutils/plasma5-ksysguard
ksysguard_PATH=		${KDE_PREFIX}/bin/ksysguard

infocenter_PORT=	sysutils/plasma5-kinfocenter
infocenter_PATH=	${KDE_PREFIX}/bin/kinfocenter

oxygen-fonts_PORT=	x11-fonts/plasma5-oxygen-fonts
oxygen-fonts_PATH=	${KDE_PREFIX}/share/fonts/truetype/oxygen/Oxygen-Sans.ttf

milou_PORT=		deskutils/plasma5-milou
milou_PATH=		${KDE_PREFIX}/lib/libmilou.so.5

icons-oxygen_PORT=	x11-themes/kde-icons-oxygen
icons-oxygen_PATH=	${KDE_PREFIX}/share/icons/oxygen/index.theme
icosn-oxygen_TYPE=	run

kdeplasma-addons_PORT=	x11-toolkits/plasma5-kdeplasma-addons
kdeplasma-addons_PATH=	${KDE_PREFIX}/lib/plugins/kcm_krunner_dictionary.so

plasma-workspace-wallpapers_PORT=	x11-themes/plasma5-plasma-workspace-wallpapers
plasma-workspace-wallpapers_PATH=	${KDE_PREFIX}/share/wallpapers/Dance_of_the_Spirits/contents/images/1280x1024.jpg

decoration_PORT=	x11-wm/plasma5-kdecoration
decoration_PATH=	${KDE_PREFIX}/lib/libkdecorations2.so

wayland_PORT=		x11/plasma5-kwayland
wayland_PATH=		${KDE_PREFIX}/lib/libKF5WaylandClient.so

# Iterate through components deprived of suffix.
.for component in ${USE_${_KDE_VERSION}:O:u:C/_.+//}
  # Check that the component is valid.
. if ${_USE_${_KDE_VERSION}_ALL:M${component}} != ""
   # Skip meta-components (e.g. kdeprefix).
.  if defined(${component}_PORT) && defined(${component}_PATH)
${component}_DEPENDS=	${${component}_PATH}:${PORTSDIR}/${${component}_PORT}
    # Check if a dependency type is explicitly requested.
.   if ${USE_${_KDE_VERSION}:M${component}_*} != "" && ${USE_${_KDE_VERSION}:M${component}} == ""
${component}_TYPE=	# empty
.    if ${USE_${_KDE_VERSION}:M${component}_build} != ""
${component}_TYPE+=	build
.    endif
.    if ${USE_${_KDE_VERSION}:M${component}_run} != ""
${component}_TYPE+=	run
.    endif
.   endif # ${USE_${_KDE_VERSION}:M${component}_*} != "" && ${USE_${_KDE_VERSION}:M${component}} == ""
    # If no dependency type is set, default to full dependency.
.   if !defined(${component}_TYPE)
${component}_TYPE=	build run
.   endif
    # Set real dependencies.
.   if ${${component}_TYPE:Mbuild} != ""
BUILD_DEPENDS+=		${${component}_DEPENDS}
.   endif
.   if ${${component}_TYPE:Mrun} != ""
RUN_DEPENDS+=		${${component}_DEPENDS}
.   endif
.  endif # defined(${component}_PORT) && defined(${component}_PATH)
. else # ! ${_USE_${_KDE_VERSION}_ALL:M${component}} != ""
IGNORE=				can't be installed: unknown USE_${_KDE_VERSION} component '${component}'
. endif # ${_USE_${_KDE_VERSION}_ALL:M${component}} != ""
.endfor

.endif # defined(_POSTMKINCLUDED) && !defined(Kde_Post_Include)
