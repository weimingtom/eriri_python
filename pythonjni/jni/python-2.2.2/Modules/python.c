/* Minimal main program -- everything is loaded from the library */

#include "Python.h"
#include <stdio.h>

#ifdef _MSC_VER
#include <windows.h>
#include <crtdbg.h>

#if USE_VC6_MEMORY_LEAK
#define __INSURE__ 1
#endif

#endif

#if defined ANDROID
#include <jni.h>
#include <stdlib.h>
#include <android/log.h>
#endif

extern DL_EXPORT(int) Py_Main(int, char **);

int
main(int argc, char **argv)
{
/*================================*/
#if 0
	return Py_Main(argc, argv);
/*================================*/
#elif 0
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
/*================================*/
#else
	int ret = 0;
	FILE *fp;
	PyCompilerFlags cf;
	char *filename;
	char *programName;
	char *argv_python[1] = {NULL};

#if defined(_MSC_VER) && defined(_DEBUG) && USE_VC6_MEMORY_LEAK
	_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
#ifdef _CONSOLE
	_CrtSetReportMode(_CRT_WARN, _CRTDBG_MODE_FILE);
	_CrtSetReportFile(_CRT_WARN, _CRTDBG_FILE_STDOUT);
	_CrtSetReportMode(_CRT_ERROR, _CRTDBG_MODE_FILE);
	_CrtSetReportFile(_CRT_ERROR, _CRTDBG_FILE_STDOUT);
	_CrtSetReportMode(_CRT_ASSERT, _CRTDBG_MODE_FILE);
	_CrtSetReportFile(_CRT_ASSERT, _CRTDBG_FILE_STDOUT);
#else
	_CrtSetReportMode(_CRT_WARN, _CRTDBG_MODE_DEBUG);
	_CrtSetReportMode(_CRT_ERROR, _CRTDBG_MODE_DEBUG);
	_CrtSetReportMode(_CRT_ASSERT, _CRTDBG_MODE_DEBUG);
#endif
#endif

	programName = "python";
	filename = "simple_program_005.py";
	argv_python[0] = filename;
	cf.cf_flags = 0;
	Py_SetProgramName(programName);
	Py_Initialize();
	PySys_SetArgv(1, argv_python);
	fp = fopen(filename, "r");
#ifdef PYTHON_MEMORY_FILE_PATH
	if (fp == NULL) {
		char real_path[1024] = {0};
		sprintf(real_path, "%s/%s", PYTHON_MEMORY_FILE_PATH, filename);
		fp = fopen(real_path, "r");
	}
#endif
	if (fp == NULL) {
		fprintf(stderr, "%s: can't open file '%s'\n",
			programName, filename);
#ifdef ANDROID
		__android_log_print(ANDROID_LOG_ERROR, "python.c", 
			"[%s:%d %s]%s: can't open file '%s'", __FILE__, __LINE__, __FUNCTION__, 
			programName, filename);
#endif
		ret = 2;
	} else {
		ret = PyRun_AnyFileExFlags(
			fp, filename, filename != NULL, &cf
		);
	}
	if(ret == -1) {
		fprintf(stderr, "error when startup\n");
#ifdef ANDROID
		__android_log_print(ANDROID_LOG_ERROR, "python.c", 
			"[%s:%d %s]%s", __FILE__, __LINE__, __FUNCTION__, 
			"error when startup");
#endif
	}
	Py_Finalize();

#ifdef __INSURE__
	_Py_ReleaseInternedStrings();
#endif /* __INSURE__ */

#if defined(_MSC_VER) && defined(_DEBUG) && USE_VC6_MEMORY_LEAK
	_CrtDumpMemoryLeaks();
#endif

	return ret;
/*================================*/
#endif
}
