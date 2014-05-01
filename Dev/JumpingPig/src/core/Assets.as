package core 
{
	import starling.textures.Texture;
	/**
	 * ...
	 * @author ts
	 */
	public class Assets 
	{
		[Embed(source="../../assets/menu/Menu.png")]
		private static const MenuImage:Class;
		
		[Embed(source="../../assets/menu/credits.png")]
		private static const CreditsImage:Class;
		
		[Embed(source="../../assets/sprite/doodlePig.png")]
		private static const PigImage:Class;
		
		[Embed(source="../../assets/sprite/doodlePigNinja.png")]
		private static const PigNinjaImage:Class;
		
		[Embed(source="../../assets/menu/curseur.png")]
		private static const CurseurImage:Class;
		
		public static var _menuTexture:Texture = Texture.fromBitmap(new MenuImage());
		public static var _creditsTexture:Texture = Texture.fromBitmap(new CreditsImage());
		public static var _pigTexture:Texture = Texture.fromBitmap(new PigImage());
		public static var _pigNinjaTexture:Texture = Texture.fromBitmap(new PigNinjaImage());
		public static var _curseurTexture:Texture = Texture.fromBitmap(new CurseurImage());
		
		public function Assets() 
		{
			
		}
		
	}

}