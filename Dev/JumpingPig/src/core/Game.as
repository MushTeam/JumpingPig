package core
{
	//import core.Assets;
	import adobe.utils.CustomActions;
	import interfaces.IState;
	import starling.display.Sprite;
	import starling.events.Event;
	import states.CreditState;
	import states.GameplayState;
	import states.MenuState;
	
	/**
	 * ...
	 * @author FS
	 */
	public class Game extends Sprite
	{
		
		private var current_state:IState;
		public static const MENUSTATE		:	int = 0;
		public static const CREDITSSTATE    :   int = 1;
		public static const GAMEPLAYSTATE    :   int = 2;
		public var idSkin : int = 0;
		
		public function Game()
		{
			super();
			//Assets.init();
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			changeState(MENUSTATE);
		}
		
		public function changeState(state:int):void
		{
			if(current_state != null)
			{
				current_state.destroy();
				current_state = null;
			}
			
			switch(state)
			{
				case MENUSTATE:
					current_state = new MenuState(this);
					break;
				case CREDITSSTATE:
					current_state = new CreditState(this);
					break;
				case GAMEPLAYSTATE:
					current_state = new GameplayState(this);
					break;
			}
			
			this.addChild(Sprite(current_state));
		}
		
		
		
	}
}