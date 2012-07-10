package  
{	
	import away3d.textures.BitmapCubeTexture;
	import away3d.textures.BitmapTexture;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.utils.Dictionary;
	import materials.ITextureLookup;
	
	public class BuiltinTextures implements ITextureLookup
	{		
		[Embed(source="../embeds/TEX_landmark_rooftop.png")]
		private static var LandmarkRoof:Class;
		public var landmarkRoof : Bitmap = new LandmarkRoof();
		
		[Embed(source="../embeds/landmark_roof_specular.png")]
		private static var LandmarkRoofSpecular:Class;
		public var landmarkRoofSpecular : Bitmap = new LandmarkRoofSpecular();
		
		[Embed(source="../embeds/TEX_landmarks_sanfrancisco.png")]
		private static var LandmarkSF:Class;							
		public var landmarkSF : Bitmap = new LandmarkSF();
		
		[Embed(source="../embeds/landmarks_specular_sanfrancisco.png")]
		private static var LandmarkSpecularSF:Class;							
		public var landmarkSpecularSF : Bitmap = new LandmarkSpecularSF();
		
		[Embed(source="../embeds/TEX_landmarks_London.png")]
		private static var LandmarkLondon:Class;							
		public var landmarkLondon : Bitmap = new LandmarkLondon();	
		
		[Embed(source="../embeds/landmarks_specular_London.png")]
		private static var LandmarkSpecularLondon:Class;							
		public var landmarkSpecularLondon : Bitmap = new LandmarkSpecularLondon();	
		
		[Embed(source="../embeds/WallTextureAtlas.png")]
		private static var WallTextureAtlas:Class;							
		public var wallTextureAtlas : Bitmap = new WallTextureAtlas();		
		
		[Embed(source="../embeds/WallSpecularAtlas.png")]
		private static var WallSpecularAtlas:Class;							
		public var wallSpecularAtlas : Bitmap = new WallSpecularAtlas();
		
		[Embed(source="../embeds/BuildingColours.png")]
		private static var BuildingColors:Class;							
		public var buildingColors : Bitmap = new BuildingColors();
		
		[Embed(source="../embeds/RoofColours.png")]
		private static var RoofColors:Class;							
		public var roofColors : Bitmap = new RoofColors();		
		
		[Embed(source="../embeds/Roof_Textures.png")]
		private static var Roof:Class;							
		public var roof : Bitmap = new Roof();
		
		[Embed(source="../embeds/Roof_Specular_Textures.png")]
		private static var RoofSpecular:Class;							
		public var roofSpecular : Bitmap = new RoofSpecular();
		
		[Embed(source="../embeds/TEX_ground_diffuse.png")]
		private static var TerrainDiffuse:Class;							
		public var terrainDiffuse : Bitmap = new TerrainDiffuse();
		
		[Embed(source="../embeds/oceangradient.png")] 
		private static var WaveColor:Class;							
		public var waveColor : Bitmap = new WaveColor();
		
		[Embed(source="../embeds/Waterbump.png")]
		private static var WaveNormalMap:Class;
		public var waveNormalMap : Bitmap = new WaveNormalMap();
		
		[Embed(source="../embeds/TEX_edge_color.png")]
		private static var WaterEdge :Class;
		public var waterEdge : Bitmap = new WaterEdge();
		
		[Embed(source="../embeds/TEX_roads_tpage_v5.png")]
		private static var RoadsTextureV5:Class;
		public var roadsTextureV5 : Bitmap = new RoadsTextureV5();
		
		[Embed(source="../embeds/fonts/RoadNamesFont_0.png")]
		private static var RoadNameTexture:Class;
		public var roadNameTexture : Bitmap = new RoadNameTexture();
		
        [Embed(source="../embeds/envMap/Skybox_VectorSky_LF.png")]
        public var EnvPosX:Class;
		public var envPosX : Bitmap = new EnvPosX();
		
        [Embed(source="../embeds/envMap/Skybox_VectorSky_UP.png")]
        public var EnvPosY:Class;
		public var envPosY : Bitmap = new EnvPosY();
		
        [Embed(source="../embeds/envMap/Skybox_VectorSky_FR.png")]
        public var EnvPosZ:Class;
		public var envPosZ : Bitmap = new EnvPosZ();
		
        [Embed(source="../embeds/envMap/Skybox_VectorSky_RT.png")]
        public var EnvNegX:Class;
		public var envNegX : Bitmap = new EnvNegX();
		
        [Embed(source="../embeds/envMap/Skybox_VectorSky_DN.png")]
        public var EnvNegY:Class;
		public var envNegY : Bitmap = new EnvNegY();
		
        [Embed(source="../embeds/envMap/Skybox_VectorSky_BK.png")]
        public var EnvNegZ:Class;
		public var envNegZ : Bitmap = new EnvNegZ();
				
		private var _lookup:Dictionary = new Dictionary();
		private var _cubeLookup:Dictionary = new Dictionary();
		private var _materialLookup:Dictionary = new Dictionary();
		
		public function BuiltinTextures()
		{
			_lookup["WallTextureAtlas"] = createTexture(wallTextureAtlas.bitmapData);
			_lookup["WallSpecularAtlas"] = createTexture(wallSpecularAtlas.bitmapData);
			_lookup["BuildingColours"] = createTexture(buildingColors.bitmapData);
			_lookup["RoofColours"] = createTexture(roofColors.bitmapData);
			_lookup["Roof_Textures"] = createTexture(roof.bitmapData);
			_lookup["RoofSpecular"] = createTexture(roofSpecular.bitmapData);
			_lookup["TerrainDiffuse"] = createTexture(terrainDiffuse.bitmapData);
			_lookup["WaveColor"] = createTexture(waveColor.bitmapData);
			_lookup["WaveNormalMap"] = createTexture(waveNormalMap.bitmapData);
			_lookup["WaveEdge"] = createTexture(waterEdge.bitmapData);
			_lookup["RoadsTexturePageV5"] = createTexture(roadsTextureV5.bitmapData);
			_lookup["RoadNameTexture"] = createTexture(roadNameTexture.bitmapData);
			_lookup["LandmarkRoof"] = createTexture(landmarkRoof.bitmapData);
			_lookup["Landmark_sanfrancisco"] = createTexture(landmarkSF.bitmapData);
			_lookup["Landmark_london"] = createTexture(landmarkLondon.bitmapData);
			_lookup["LandmarkRoofSpecular"] = createTexture(landmarkRoofSpecular.bitmapData);
			_lookup["Landmark_specular_sanfrancisco"] = createTexture(landmarkSpecularSF.bitmapData);
			_lookup["Landmark_specular_london"] = createTexture(landmarkSpecularLondon.bitmapData);
			
			_lookup["EnvPosX"] = createTexture(envPosX.bitmapData);
			_lookup["EnvPosY"] = createTexture(envPosY.bitmapData);
			_lookup["EnvPosZ"] = createTexture(envPosZ.bitmapData);
			_lookup["EnvNegX"] = createTexture(envNegX.bitmapData);
			_lookup["EnvNegY"] = createTexture(envNegY.bitmapData);
			_lookup["EnvNegZ"] = createTexture(envNegZ.bitmapData);
			
			_cubeLookup["sky"] = new BitmapCubeTexture(
						envPosX.bitmapData, 
						envNegX.bitmapData, 
						envPosY.bitmapData, 
						envNegY.bitmapData, 
						envPosZ.bitmapData, 
						envNegZ.bitmapData);
		}
		
		private function createTexture(bitmapData:BitmapData):BitmapTexture 
		{
			return new BitmapTexture(bitmapData);
		}
		
		public function getTextureByName(name : String):BitmapTexture
		{
			return _lookup[name];
		}
		
		public function setTextureByName(name : String, data : BitmapTexture):void
		{
			_lookup[name] = data;
		}		
		
		public function getCubeTextureByName (name:String) : BitmapCubeTexture
		{
			return _cubeLookup[name];
		}				
	}
}