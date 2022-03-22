TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp

include(deployment.pri)
qtcAddDeployment()

QMAKE_CXXFLAGS += -m32 -g
LIBS += -m32

QMAKE_EXTRA_COMPILERS += nasmproc32

ASM_SRCS_32 += addsub.asm
nasmproc32.output = ${DESTDIR}/../${OBJECTS_DIR}${QMAKE_FILE_BASE}.o
nasmproc32.commands = nasm -f elf32 ${QMAKE_FILE_NAME} -g3 -o ${QMAKE_FILE_OUT}
nasmproc32.input = ASM_SRCS_32
