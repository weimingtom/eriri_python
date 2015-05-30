package com.iteye.weimingtom.pythonjni;

import android.content.Context;

public class PythonJNI {
	private static final boolean D = true;
	private static final String TAG = "PythonJNI";
	
	public native int exec(String filename);
	
	static {
		System.loadLibrary("application");
	}
	
	private Context mContext;
	
	public PythonJNI(Context context) {
		this.mContext = context;
	}
}
