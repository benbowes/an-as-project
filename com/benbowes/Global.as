package com.benbowes{
	
	/* @usage:  
	
	import com.benbowes.Global;
	
	Global.FLASVARS.myGlobalVar = "some value";
	
	
	
	
	then in some other class...
	
	import com.benbowes.Global;
	
	trace(Global.FLASVARS.myGlobalVar)  // some value;
	
	
	*/
	
	
	public class Global{
		public static var FLASHVARS:Object = {};
	}
	
}