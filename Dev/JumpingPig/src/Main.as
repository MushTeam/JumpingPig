package 
{
	import core.Game;
	import flash.display.Sprite;
	import flash.events.Event;
	import starling.core.Starling;
	
	/**
	 * ...
	 * @author FS
	 */
	[SWF(width=640, height=960, frameRate=60, backgroundColor=0x232323)]
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var star:Starling = new Starling(Game, stage);
			star.antiAliasing = 1;
			star.showStats = true;
			star.simulateMultitouch = true;
			star.start();
		}
		
	}
	
}