LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := python222

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Include

LOCAL_CFLAGS := 

LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := Parser/acceler.c Parser/grammar1.c Parser/listnode.c
LOCAL_SRC_FILES += Parser/node.c Parser/parser.c Parser/parsetok.c
LOCAL_SRC_FILES += Parser/tokenizer.c Parser/bitset.c Parser/metagrammar.c
LOCAL_SRC_FILES += Parser/myreadline.c

LOCAL_SRC_FILES += Objects/abstract.c Objects/bufferobject.c Objects/cellobject.c
LOCAL_SRC_FILES += Objects/classobject.c Objects/cobject.c Objects/complexobject.c
LOCAL_SRC_FILES += Objects/descrobject.c Objects/fileobject.c Objects/floatobject.c
LOCAL_SRC_FILES += Objects/frameobject.c Objects/funcobject.c Objects/intobject.c
LOCAL_SRC_FILES += Objects/iterobject.c Objects/listobject.c Objects/longobject.c
LOCAL_SRC_FILES += Objects/dictobject.c Objects/methodobject.c Objects/moduleobject.c
LOCAL_SRC_FILES += Objects/object.c Objects/rangeobject.c Objects/sliceobject.c
LOCAL_SRC_FILES += Objects/stringobject.c Objects/structseq.c Objects/tupleobject.c
LOCAL_SRC_FILES += Objects/typeobject.c Objects/weakrefobject.c Objects/unicodeobject.c
LOCAL_SRC_FILES += Objects/unicodectype.c

LOCAL_SRC_FILES += Python/bltinmodule.c Python/exceptions.c Python/ceval.c
LOCAL_SRC_FILES += Python/mysnprintf.c

# LOCAL_SRC_FILES += Parser/firstsets.c Parser/grammar.c Parser/pgen.c
# LOCAL_SRC_FILES += Parser/printgrammar.c

LOCAL_SRC_FILES += Python/compile.c Python/codecs.c Python/errors.c
LOCAL_SRC_FILES += Python/frozen.c Python/future.c
#Python/frozenmain.c 
LOCAL_SRC_FILES += Python/getargs.c Python/getcompiler.c Python/getcopyright.c
LOCAL_SRC_FILES += Python/getmtime.c Python/getplatform.c Python/getversion.c
LOCAL_SRC_FILES += Python/graminit.c Python/import.c Python/importdl.c
LOCAL_SRC_FILES += Python/marshal.c Python/modsupport.c Python/mystrtoul.c
LOCAL_SRC_FILES += Python/pyfpe.c Python/pystate.c Python/pythonrun.c
LOCAL_SRC_FILES += Python/structmember.c Python/symtable.c Python/sysmodule.c
LOCAL_SRC_FILES += Python/traceback.c Python/getopt.c Python/dynload_shlib.c
LOCAL_SRC_FILES += Python/thread.c 
 
LOCAL_SRC_FILES += Modules/config.c Modules/getpath.c Modules/main.c
LOCAL_SRC_FILES += Modules/gcmodule.c 
LOCAL_SRC_FILES += Modules/threadmodule.c Modules/signalmodule.c
LOCAL_SRC_FILES += Modules/posixmodule.c Modules/errnomodule.c
LOCAL_SRC_FILES += Modules/_sre.c Modules/newmodule.c
LOCAL_SRC_FILES += Modules/symtablemodule.c Modules/xxsubtype.c

LOCAL_SRC_FILES += Modules/getbuildinfo.c


LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
