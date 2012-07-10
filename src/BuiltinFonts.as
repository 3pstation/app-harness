package  
{
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	import fonts.IFontLookup;
	
	public class BuiltinFonts implements IFontLookup
	{
		[Embed(source="../embeds/fonts/RoadNamesFont.xml", mimeType="application/octet-stream")]
		public var RoadNameFont:Class;	
		public var roadNameFont : ByteArray = new RoadNameFont();
		
		private var _lookup:Dictionary = new Dictionary();
		
		public function BuiltinFonts() 
		{
			var roadNameFontContent : String = roadNameFont.readUTFBytes(roadNameFont.length);
			_lookup["RoadNamesFont"] = new XML(roadNameFontContent);
		}
		
		public function getFontByName(name : String) : XML
		{
			return _lookup[name];
		}
	}
}