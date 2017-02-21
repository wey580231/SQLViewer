DEFINES += SQLVIEWER_LIBRARY

# SQLViewer files

SOURCES += sqlviewerplugin.cpp

HEADERS += sqlviewerplugin.h \
        sqlviewer_global.h \
        sqlviewerconstants.h

# Qt Creator linking

## set the QTC_SOURCE environment variable to override the setting here
QTCREATOR_SOURCES = $$(QTC_SOURCE)
isEmpty(QTCREATOR_SOURCES):QTCREATOR_SOURCES=C:/Qt/qt-creator-2.8.0-src

## set the QTC_BUILD environment variable to override the setting here
IDE_BUILD_TREE = $$(QTC_BUILD)
isEmpty(IDE_BUILD_TREE):IDE_BUILD_TREE=C:/Qt/build-qtcreator-485vs32-Debug

## uncomment to build plugin into user config directory
## <localappdata>/plugins/<ideversion>
##    where <localappdata> is e.g.
##    "%LOCALAPPDATA%\QtProject\qtcreator" on Windows Vista and later
##    "$XDG_DATA_HOME/data/QtProject/qtcreator" or "~/.local/share/data/QtProject/qtcreator" on Linux
##    "~/Library/Application Support/QtProject/Qt Creator" on Mac
# USE_USER_DESTDIR = yes

PROVIDER = Yang

include($$QTCREATOR_SOURCES/src/qtcreatorplugin.pri)

