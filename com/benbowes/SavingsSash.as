package com.benbowes{

	import flash.net.*;
	import flash.display.*;
	import flash.events.*;
	import flash.text.*;
	import com.greensock.*;
	import com.greensock.easing.*;

    public class SavingsSash extends MovieClip{
		
		private var SCOPE;
		
        public function SavingsSash() {
			SCOPE = this;
            //SCOPE.addEventListener(Event.ADDED_TO_STAGE, init,false,0,true);
			//SCOPE.addEventListener(Event.REMOVED_FROM_STAGE, kill,false,0,true);
        }
		/*
		private function init(e:Event):void{  
			
			SCOPE.rollOverBtn.gotoAndStop(1);
			SCOPE.terms.visible = false;
			
			SCOPE.rollOverBtn.buttonMode = true;
			SCOPE.rollOverBtn.mouseChildren = false;
			SCOPE.rollOverBtn.mouseEnabled = true;
		  
			SCOPE.rollOverBtn.addEventListener(MouseEvent.ROLL_OVER,overHandler,false,0,true);
			SCOPE.rollOverBtn.addEventListener(MouseEvent.ROLL_OUT,outHandler,false,0,true);
		}
		
		private function overHandler(e:Event=null):void{
			TweenMax.to(SCOPE.terms,0.4,{autoAlpha:1, ease:Quint.easeOut});
		}

		private function outHandler(e:Event=null):void{
			TweenMax.to(SCOPE.terms,0.4,{autoAlpha:0, ease:Quint.easeOut});           
		}
	  
		//////////////////////////////////////////////////////////////////
		private function kill(e:Event):void{
			TweenMax.killChildTweensOf (SCOPE);
			SCOPE.removeEventListener(Event.REMOVED_FROM_STAGE, kill);
			SCOPE = null;
		} 
		*/
    }

}
