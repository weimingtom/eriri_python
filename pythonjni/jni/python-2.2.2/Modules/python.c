/* Minimal main program -- everything is loaded from the library */

#include "Python.h"
#include <stdio.h>

#if defined ANDROID
#include <jni.h>
#include <stdlib.h>
#include <android/log.h>
#endif

extern DL_EXPORT(int) Py_Main(int, char **);

int
main(int argc, char **argv)
{
#if 0
	return Py_Main(argc, argv);
#else
	int ret = 0;

	Py_SetProgramName("python");
	Py_Initialize();
	ret = PyRun_SimpleString(
		"print 'Hello World!'\n"
	);
	if(ret == -1) {
		fprintf(stderr, "error when startup\n");
#ifdef ANDROID
		__android_log_print(ANDROID_LOG_ERROR, "python.c", 
			"[%s:%d %s]%s", __FILE__, __LINE__, __FUNCTION__, 
			"error when startup");
#endif
	}
	Py_Finalize();
	return ret;
#endif
}
