package states 
{
	import core.Game;
	import core.Assets;
	import starling.display.Image;
	import starling.events.Event;
	import interfaces.IState;
	import starling.display.Sprite;
	import starling.events.KeyboardEvent;
	
	/**
	 * ...
	 * @author ts
	 */
	public class CreditState extends Sprite implements IState 
	{
		private var game:Game;
		private var background:Image;
		
		public function CreditState(pGame:Game) 
		{
			super();
			game = pGame;
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void {
			trace( "credits");
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener( KeyboardEvent.KEY_DOWN , onKey);
			background = new Image(Assets._creditsTexture);
			//addChild
			addChild(background);
		}
		
		private function onKey(e:KeyboardEvent):void {
		trace(e.keyCode, e.charCode , e.keyLocation );
			if (e.keyCode == 32 || e.keyCode == 13 ) {
				game.changeState(Game.MENUSTATE);
			}
		}
		
		
		public function destroy():void 
		{
			removeEventListener(KeyboardEvent.KEY_DOWN , onKey);
			removeChild(background);
		}
		
	}

}