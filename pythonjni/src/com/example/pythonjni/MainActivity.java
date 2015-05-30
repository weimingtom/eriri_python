package com.example.pythonjni;

import com.example.pythonjni.R;
import com.iteye.weimingtom.pythonjni.PythonJNI;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

public class MainActivity extends Activity {
	private static final String TAG = "MainActivity";
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.main);
		PythonJNI python = new PythonJNI(this);
		Log.e(TAG, "python.exec return : " + python.exec("test_fib.rb"));
	}
}
