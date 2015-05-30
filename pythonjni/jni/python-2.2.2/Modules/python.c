/* Minimal main program -- everything is loaded from the library */

#include "Python.h"
#include <stdio.h>

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
	if(ret == -1)
	{
		fprintf(stderr, "error when startup\n");
	}
	Py_Finalize();
	return ret;
#endif
}
