﻿package actors 
{
	import utils.Controller;	
	import flash.events.Event;
	import flash.ui.Keyboard;
	/**
	 * ...
	 * @author erwin henraat
	 */
	public class Player2 extends Paddle 
	{
		private var controller:Controller;
		private var speed:Number = 0;
		
		public function Player2()
		{
			scaleX = -1; 
			this.addEventListener(Event.ADDED_TO_STAGE, init);		
		}		
		private function init(e:Event):void 
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, init);
			controller = new Controller(stage, Keyboard.W, Keyboard.S, Keyboard.SHIFT);
			this.addEventListener(Event.ENTER_FRAME, loop);		
		}
		private function loop(e:Event):void 
		{
			  if (controller.up)
			{
				speed = -15;
			}
			else if(controller.down)
			{
				speed = 15;
			}else
			{
				if (speed > 0) speed--;
				if (speed < 0) speed++;
				
			}
			if (controller.fire)
			{
				
				
			}
			this.y += speed;
		}
		
	}

}