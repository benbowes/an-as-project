﻿package com.benbowes{	import flash.net.*;	import flash.display.*;	import flash.events.*;	import flash.text.*;	import com.greensock.*;	import com.greensock.easing.*;    public class MapBtn extends MovieClip{				private var SCOPE;		public var itemIndex;		public var labelText;		public var X;		public var Y;		public var offScreen;		private var btnBg:Sprite;		private var mc;		        public function MapBtn() {			SCOPE = this;            SCOPE.addEventListener(Event.ADDED_TO_STAGE, init,false,0,true);			SCOPE.addEventListener(Event.REMOVED_FROM_STAGE, kill,false,0,true);        }				private function init(e:Event):void{			SCOPE.buttonMode = true;			SCOPE.mouseChildren = false;			SCOPE.mouseEnabled = true;			SCOPE.tf.defaultTextFormat = SCOPE.tf.getTextFormat();			SCOPE.tf.text = labelText;			SCOPE.tf.autoSize = "left";						btnBg = new Sprite();			btnBg.graphics.beginFill (0xBBC7B3);//(0x939e8e);      		    btnBg.graphics.drawRoundRect (0, -3, SCOPE.tf.width+20, 20, 6, 6); 			btnBg.graphics.endFill ();			btnBg.x = SCOPE.tf.x;			btnBg.y = SCOPE.tf.y-1;			btnBg.alpha = 0;			SCOPE.addChildAt (btnBg, 0);			SCOPE.addEventListener(MouseEvent.ROLL_OVER,overHandler,false,0,true);			SCOPE.addEventListener(MouseEvent.ROLL_OUT,outHandler,false,0,true);		}				private function overHandler(e:Event=null):void{			//TweenMax.to(btnBg,0,{scaleX:0.01});			TweenMax.to(btnBg,0.4,{alpha:1,scaleX:1, ease:Quint.easeOut});			TweenMax.to(tf,0.2,{tint:0xffffff, x:10, ease:Quint.easeOut});  		   	mc = SCOPE.parent.addChild(new labelPoint());  			mc.labelTf.autoSize = "left";			mc.labelTf.text = labelText; 			mc.graphics.beginFill (0xBBC7B3);//(0x939e8e);			if(offScreen == "up"){				mc.pointer.scaleY = -1;				mc.graphics.drawRoundRect (0, -49, mc.labelTf.width+20, 35, 6, 6);				mc.y = 100; 		    }else{		   		mc.graphics.drawRoundRect (0, -49, mc.labelTf.width+20, 35, 6, 6);				mc.y = Y; 		    }    			mc.graphics.endFill ();			mc.setChildIndex(mc.labelTf, mc.numChildren-1);   			mc.x = X;			TweenLite.from(mc,0.4,{y:"+20", alpha:0,ease:Expo.easeOut}); 			//TweenMax.to(mc,0, {glowFilter:{color:0xFFFFFF, alpha:0.5, blurX:8, blurY:8, strength:4}})		}		private function outHandler(e:Event=null):void{			TweenMax.to(btnBg,0.4,{scaleX:0.1, ease:Expo.easeOut});			TweenLite.to(btnBg,0.2,{delay:0.1, alpha:0, ease:Expo.easeOut});			TweenMax.to(tf,0.4,{removeTint:true, x:0, ease:Expo.easeOut});  			TweenMax.killTweensOf (mc);			SCOPE.parent.removeChild(mc);		}				public function select():void{			SCOPE.removeEventListener(MouseEvent.ROLL_OVER,overHandler);			SCOPE.removeEventListener(MouseEvent.ROLL_OUT,outHandler);			SCOPE.buttonMode=false;			SCOPE.mouseEnabled=false;			overHandler();		}		public function deselect():void{			SCOPE.addEventListener(MouseEvent.ROLL_OVER,overHandler,false,0,true);			SCOPE.addEventListener(MouseEvent.ROLL_OUT,outHandler,false,0,true);			SCOPE.buttonMode=true;			SCOPE.mouseEnabled=true;			outHandler();		}				//////////////////////////////////////////////////////////////////		private function kill(e:Event):void{			TweenMax.killChildTweensOf (SCOPE);			SCOPE.removeEventListener(Event.REMOVED_FROM_STAGE, kill);			SCOPE = null;		}    }}