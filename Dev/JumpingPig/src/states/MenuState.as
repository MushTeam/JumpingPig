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
	public class MenuState extends Sprite implements IState 
	{
		private var game:Game;
		private var background:Image;
		private var curseur:Image;
		private var idCurseur:int;
		
		public function MenuState(pGame:Game) 
		{
			super();
			game = pGame;
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void {
			trace( "menustate");
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener( KeyboardEvent.KEY_DOWN , onKey);
			background = new Image(Assets._menuTexture);
			curseur = new Image(Assets._curseurTexture);
			curseur.x = 70;
			curseur.y = 350;
			//addChild
			addChild(background);
			addChild(curseur);
		}
		
		private function onKey(e:KeyboardEvent):void {
			trace(e.keyCode, e.charCode , e.keyLocation );
			if (e.keyCode == 37 || e.keyCode == 39) {
				idCurseur++;
				if (idCurseur % 2 == 0) {
					curseur.x = 70;
					curseur.y = 350;
				}
				else {
					curseur.x = 470;
					curseur.y = 350;
				}
			}
			if (e.keyCode == 32 || e.keyCode == 13 ) {
				(idCurseur%2==0) ? game.changeState(Game.GAMEPLAYSTATE) : game.changeState(Game.CREDITSSTATE);
			}
		}
		
		/* INTERFACE interfaces.IState */
		
		public function destroy():void 
		{
			removeEventListener( KeyboardEvent.KEY_DOWN , onKey);
			removeChild(curseur);
			removeChild(background);
		}
		
	}

}