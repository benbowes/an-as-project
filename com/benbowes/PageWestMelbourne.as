﻿package com.benbowes{	import flash.net.*;	import flash.display.*;	import flash.events.*;	import flash.text.*;	import com.greensock.*;	import com.greensock.easing.*;	import com.benbowes.Global;	import com.benbowes.Utility;  			// Import the necessary classes.	import com.jumpeye.Events.FLASHEFFEvents;	import com.jumpeye.flashEff2.text.scrollSlide.FETScrollSlide;    public class PageWestMelbourne extends Sprite{		private var SCOPE;  		private var effect:FlashEff2Code;		private var effect2:FlashEff2Code;		private var showEffect:FETScrollSlide;		private var hideEffect:FETScrollSlide;  	   // private var LEN:Number;	   // private var INDEX:Number = 0;	   // private var LAST_INDEX:Number = 0;	   // private var ORIG_Y:int;     		private var myTimeline:TimelineMax;		        public function PageWestMelbourne() {			SCOPE = this;            SCOPE.addEventListener(Event.ADDED_TO_STAGE, init,false,0,true);			SCOPE.addEventListener(Event.REMOVED_FROM_STAGE, kill,false,0,true);            SCOPE.addEventListener(EventKill.DEATH, hide,false,0,true);          }			public function init(e:Event = null){  			myTimeline = new TimelineMax();			 			//ORIG_Y = bodyTf.y;                                              		   // LEN = Global.FLASHVARS.residenceXML.blurb.page.length();			SCOPE.headingTf.autoSize = TextFieldAutoSize.LEFT;			SCOPE.headingTf.htmlText = Global.FLASHVARS.westMelbourneXML.headParagraph.text();    			//SCOPE.bodyTf.htmlText = Global.FLASHVARS.residenceXML.blurb.page[INDEX].text();			               			showEffect = new FETScrollSlide();			showEffect.groupDuration = 2;   						effect = new FlashEff2Code(); 			addChild(effect);  			effect.showTransition = showEffect;			effect.showDelay = 0.5;			effect.target = headingTf;		      		    myTimeline.insert( TweenMax.from(hero,2,{delay:0, colorMatrixFilter:{brightness:3, contrast:1.5}, ease:Quint.easeInOut}) );	   	   // myTimeline.insert( TweenMax.from(prevBtn,1,{delay:2, alpha:0, ease:Quint.easeInOut}) ); 		   // myTimeline.insert( TweenMax.from(nextBtn,1,{delay:2, alpha:0, ease:Quint.easeInOut}) ); 		   // myTimeline.insert( TweenMax.from(SCOPE.bodyTf,1,{delay:2, alpha:0, ease:Quint.easeInOut, onComplete:showNext}) ); 				   // prevBtn.buttonMode = true;		   // prevBtn.addEventListener(MouseEvent.CLICK, textChangePrev, false,0,true); 		   // nextBtn.buttonMode = true;		   // nextBtn.addEventListener(MouseEvent.CLICK, textChangeNext, false,0,true);						TweenMax.from(rodenStreetPDFBtn,1,{alpha:0, delay:2, ease:Quint.easeInOut});  			rodenStreetPDFBtn.buttonMode = true;			rodenStreetPDFBtn.addEventListener(MouseEvent.CLICK,clic,false,0,true);			rodenStreetPDFBtn.addEventListener(MouseEvent.ROLL_OVER,over,false,0,true);			rodenStreetPDFBtn.addEventListener(MouseEvent.ROLL_OUT,out,false,0,true);					}    		private function clic(e){			navigateToURL(new URLRequest("BestStreetsWestMelbourneAgeDomain130211.pdf"), "_blank");		}		private function over(e){			TweenMax.to(e.target,0,{alpha:0.7, ease:Quint.easeInOut});		}		private function out(e){			TweenMax.to(e.target,0.5,{alpha:1, ease:Quint.easeInOut});       		}   				/*      		public function textChangeNext(e:Event){			if(INDEX < LEN-1){				INDEX++;			}else{				INDEX = 0;			}			TweenMax.to(SCOPE.bodyTf,0.4,{alpha:0,ease:Quint.easeInOut, y:ORIG_Y-10, onComplete:showNext});			TweenMax.to(e.target,0,{alpha:0.6}); 			TweenMax.to(e.target,0.4,{alpha:1,ease:Quint.easeInOut}); 		}		public function textChangePrev(e:Event){			if(INDEX > 0){				INDEX--;			}else{				INDEX = LEN-1;			}  			TweenMax.to(SCOPE.bodyTf,0.4,{alpha:0,ease:Quint.easeIn, y:ORIG_Y+10, onComplete:showNext});  			TweenMax.to(e.target,0,{alpha:0.6}); 			TweenMax.to(e.target,0.4,{alpha:1,ease:Quint.easeInOut});		}                                                           		private function showNext(){    			SCOPE.bodyTf.htmlText = Global.FLASHVARS.residenceXML.blurb.page[INDEX].text(); 						if(LAST_INDEX-1 == INDEX){			   bodyTf.y =  ORIG_Y-10;			}else if(LAST_INDEX+1 == INDEX){			   bodyTf.y =  ORIG_Y+10;			}else{			   bodyTf.y =  ORIG_Y;			}			TweenMax.to(bodyTf,0.5,{alpha:1,y:ORIG_Y, ease:Quint.easeOut});  						//pagesTf.text = "Page " + (INDEX+1) + " / " + LEN;   			//pagesTf.alpha=0;			//TweenMax.to(pagesTf,1,{y:bodyTf.y + bodyTf.height, alpha:1, ease:Quint.easeInOut});   						LAST_INDEX = INDEX;		} 		*/		public function hide() {   			hideEffect = new FETScrollSlide();			hideEffect.groupDuration = 0.3;			effect.hideTransition = hideEffect;			effect.hide();						myTimeline.timeScale = 3;			myTimeline.reverse();   			//TweenMax.to(pagesTf,0.4,{alpha:0, ease:Quint.easeInOut});		}		//////////////////////////////////////////////////////////////////		private function kill(e:Event):void{			TweenMax.killChildTweensOf (SCOPE);			SCOPE.removeEventListener(Event.REMOVED_FROM_STAGE, kill);			SCOPE = null;		}    }}