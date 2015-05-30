#include "com_iteye_weimingtom_pythonjni_PythonJNI.h"
#include <stdlib.h>
#include <stdio.h>

JNIEXPORT jint Java_com_iteye_weimingtom_pythonjni_PythonJNI_exec
  (JNIEnv *env, jobject obj, jstring filename)
{
    char bufFilename[256] = {0};
    const char *strFilename;
	int ret = 0;

    strFilename = (*env)->GetStringUTFChars(env, filename, NULL);
    if (strFilename == NULL) {
        return -1; /* OutOfMemoryError already thrown */
    }
    //printf("%s", strFilename);
    snprintf(bufFilename, sizeof(bufFilename) - 1, "%s", strFilename);
    (*env)->ReleaseStringUTFChars(env, filename, strFilename);

	Py_SetProgramName(bufFilename);
	Py_Initialize();
	ret = PyRun_SimpleString(
		"print 'Hello World!'\n"
	);
	if(ret == -1)
	{
		fprintf(stderr, "error when startup\n");
	}
	Py_Finalize();
	return ret;
}
