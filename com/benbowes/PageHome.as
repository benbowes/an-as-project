﻿package com.benbowes{	import flash.net.*;	import flash.display.*;	import flash.events.*;	import flash.text.*;	import com.benbowes.EventNavigation;	import com.asual.swfaddress.SWFAddress;   	import com.asual.swfaddress.SWFAddressEvent;  	import com.greensock.*;	import com.greensock.easing.*;	import com.benbowes.Global;	    public class PageHome extends MovieClip{			private var SCOPE;        public var NAVIGATION_HOME;             public function PageHome() {     			SCOPE = this;            SCOPE.addEventListener(Event.ADDED_TO_STAGE, init, false, 0, true);        }		public function init(event:Event = null){    						SCOPE.addEventListener(Event.REMOVED_FROM_STAGE, kill,false,0,true);			stage.addEventListener (Event.RESIZE, positionElements, false, 0, true);      						NAVIGATION_HOME = SCOPE.addChild(new com.benbowes.NavigationHome());  			NAVIGATION_HOME.name = "navigationHome";			NAVIGATION_HOME.x = 80;			NAVIGATION_HOME.y = 380;			 		    TweenMax.from (registerNowBtn,1,{colorMatrixFilter:{brightness:0, contrast:2}, y:-50, delay:3, ease:Back.easeOut});   			TweenMax.from (bgVeg,4,{colorMatrixFilter:{brightness:-3, contrast:2}, alpha:0, delay:1, ease:Quint.easeInOut});        						registerNowBtn.buttonMode = true;  			registerNowBtn.addEventListener(MouseEvent.CLICK, handleRegClick, false, 0, true);			registerNowBtn.addEventListener(MouseEvent.ROLL_OVER, over, false, 0, true);			registerNowBtn.addEventListener(MouseEvent.ROLL_OUT, out, false, 0, true);						positionElements();		}        				private function over(e){		   TweenMax.to (e.target,0.3,{alpha:0.7, y:10, ease:Back.easeOut}); 		}				private function out(e){			TweenMax.to (e.target,0.4,{alpha:1, y:0, ease:Quint.easeInOut}); 		}				private function handleRegClick(e:MouseEvent = null):void{			SWFAddress.setValue("register");			SWFAddress.setTitle("Illura | Register your interest");		}				private function positionElements(e:Event = null){			var w = stage.stageWidth;			var h = stage.stageHeight;				   SCOPE.bgBlack.height = h;		   SCOPE.bgBlack.width = w;         				   // Resize image presuming width will be OK    		   SCOPE.bgVeg.x = SCOPE.bgBlack.width;       		   SCOPE.bgVeg.height = h;		   SCOPE.bgVeg.scaleX = SCOPE.bgVeg.scaleY;		}				//////////////////////////////////////////////////////////////////		private function kill(e:Event):void{						TweenMax.killChildTweensOf (SCOPE);			SCOPE.removeEventListener(Event.REMOVED_FROM_STAGE, kill);            SCOPE = null;		}		    }}