package states 
{
	import core.Game;
	import objects.Pig;
	import starling.display.Image;
	import starling.events.Event;
	import interfaces.IState;
	import starling.display.Sprite;
	
	/**
	 * ...
	 * @author ts
	 */
	public class GameplayState extends Sprite implements IState 
	{
		private var game:Game;
		private var pig:Pig;
		
		public function GameplayState(pGame:Game) 
		{
			super();
			game = pGame;
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
			pig = new Pig(game);
			//addChild
		}
		
		/* INTERFACE interfaces.IState */
		
		public function destroy():void 
		{
			
		}
		
	}

}