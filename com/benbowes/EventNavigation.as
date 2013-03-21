// dispatchEvent(new EventNavigation("ClassName String or something Else"));

package com.benbowes{
	import flash.events.Event;

	public class EventNavigation extends Event {
	
		public static const NEW_SECTION:String = "newSection";
		public var section:String;

		public function EventNavigation(section:String) {

			// bubbles=true, cancelable=false
			super(NEW_SECTION, true, false);
			this.section = section;
		}
	}
}