QT += quick

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    sources/DataBase/database.cpp \
    sources/Network/network.cpp \
    sources/Neuro/neuronet.cpp \
    sources/Relationship/relationship.cpp \
    sources/client.cpp \
    main.cpp \
    sources/Questions/questions.cpp

RESOURCES += qml.qrc

TRANSLATIONS += \
    SocialisationQuest_ru_RU.ts

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    headers/DataBase/database.h \
    headers/Network/network.h \
    headers/Neuro/neuroConfig.h \
    headers/Neuro/neuronet.h \
    headers/Relationship/relationship.h \
    headers/client.h \
    headers/Questions/questions.h \
    headers/configApp/config.h \
    headers/utils/utils.h

