package objects 
{
	import core.Game;
	import core.Assets;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author ts
	 */
	public class Pig extends Sprite
	{
		private var game:Game;
		private var pig:Image;
		
		public function Pig(pGame:Game) 
		{
			game = pGame;
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
			pig = ( game.idSkin == 0 ) ? new Image(Assets._pigTexture) : new Image(Assets._pigNinjaTexture);
			addChild(pig);
			//addChild
		}
	}

}