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
		[Embed(source="../embeds/landmarkDiffuse.png")]
		private static var LandmarkDiffuse:Class;
		public var landmarkDiffuse:Bitmap = new LandmarkDiffuse();
		
		[Embed(source="../embeds/landmarkSpecular.png")]
		private static var LandmarkSpecular:Class;
		public var landmarkSpecular:Bitmap = new LandmarkSpecular();
		
		[Embed(source="../embeds/wallDiffuse.png")]
		private static var WallTextureAtlas:Class;
		public var wallTextureAtlas:Bitmap = new WallTextureAtlas();
		
		[Embed(source="../embeds/wallSpecular.png")]
		private static var WallSpecularAtlas:Class;
		public var wallSpecularAtlas:Bitmap = new WallSpecularAtlas();
		
		[Embed(source="../embeds/buildingColours.png")]
		private static var BuildingColors:Class;
		public var buildingColors:Bitmap = new BuildingColors();
		
		[Embed(source="../embeds/roofColours.png")]
		private static var RoofColours:Class;
		public var roofColours:Bitmap = new RoofColours();
		
		[Embed(source="../embeds/roofDiffuse.png")]
		private static var Roof:Class;
		public var roof:Bitmap = new Roof();
		
		[Embed(source="../embeds/roofSpecular.png")]
		private static var RoofSpecular:Class;
		public var roofSpecular:Bitmap = new RoofSpecular();
		
		[Embed(source="../embeds/groundDiffuse.png")]
		private static var TerrainDiffuse:Class;
		public var terrainDiffuse:Bitmap = new TerrainDiffuse();
		
		[Embed(source="../embeds/oceanGradient.png")] 
		private static var WaveColor:Class;
		public var waveColor:Bitmap = new WaveColor();
		
		[Embed(source="../embeds/waterBump.png")]
		private static var WaveNormalMap:Class;
		public var waveNormalMap:Bitmap = new WaveNormalMap();
		
		[Embed(source="../embeds/edgeColor.png")]
		private static var WaterEdge :Class;
		public var waterEdge:Bitmap = new WaterEdge();
		
		[Embed(source="../embeds/roadDiffuse.png")]
		private static var RoadsDiffuse:Class;
		public var roadsDiffuse:Bitmap = new RoadsDiffuse();
		
		[Embed(source="../embeds/fonts/roadNamesFont0.png")]
		private static var RoadNameTexture:Class;
		public var roadNameTexture:Bitmap = new RoadNameTexture();
		
		[Embed(source="../embeds/envMap/skyboxVectorSkyLf.jpg")]
		public var EnvPosX:Class;
		public var envPosX:Bitmap = new EnvPosX();
		
		[Embed(source="../embeds/envMap/skyboxVectorSkyUp.jpg")]
		public var EnvPosY:Class;
		public var envPosY:Bitmap = new EnvPosY();
		
		[Embed(source="../embeds/envMap/skyboxVectorSkyFr.jpg")]
		public var EnvPosZ:Class;
		public var envPosZ:Bitmap = new EnvPosZ();
		
		[Embed(source="../embeds/envMap/skyboxVectorSkyRt.jpg")]
		public var EnvNegX:Class;
		public var envNegX:Bitmap = new EnvNegX();
		
		[Embed(source="../embeds/envMap/skyboxVectorSkyDn.jpg")]
		public var EnvNegY:Class;
		public var envNegY:Bitmap = new EnvNegY();
		
		[Embed(source="../embeds/envMap/skyboxVectorSkyBk.jpg")]
		public var EnvNegZ:Class;
		public var envNegZ:Bitmap = new EnvNegZ();
		
		[Embed(source="../embeds/reflection.jpg")]
		private static var BuildingReflection:Class;
		public var buildingReflection:Bitmap = new BuildingReflection();
		
		[Embed(source="../embeds/treeDiffuse.png")]
		private static var TreeDiffuse:Class;
		public var treeDiffuse:Bitmap = new TreeDiffuse();
		
		private var _lookup:Dictionary = new Dictionary();
		private var _cubeLookup:Dictionary = new Dictionary();
		private var _materialLookup:Dictionary = new Dictionary();
		
		public function BuiltinTextures()
		{
			_lookup["LandmarkDiffuse"] = createTexture(landmarkDiffuse.bitmapData);
			_lookup["LandmarkSpecular"] = createTexture(landmarkSpecular.bitmapData);
			
			_lookup["BuildingReflection"] = createTexture(buildingReflection.bitmapData);
			_lookup["BuildingRoofColours"] = createTexture(roofColours.bitmapData);
			_lookup["BuildingRoofDiffuse"] = createTexture(roof.bitmapData);
			_lookup["BuildingRoofSpecular"] = createTexture(roofSpecular.bitmapData);
			_lookup["BuildingWallColours"] = createTexture(buildingColors.bitmapData);
			_lookup["BuildingWallDiffuse"] = createTexture(wallTextureAtlas.bitmapData);
			_lookup["BuildingWallSpecular"] = createTexture(wallSpecularAtlas.bitmapData);
			
			_lookup["TerrainDiffuse"] = createTexture(terrainDiffuse.bitmapData);
			
			_lookup["WaveColor"] = createTexture(waveColor.bitmapData);
			_lookup["WaveNormalMap"] = createTexture(waveNormalMap.bitmapData);
			_lookup["WaveEdge"] = createTexture(waterEdge.bitmapData);
			
			_lookup["RoadsDiffuse"] = createTexture(roadsDiffuse.bitmapData);
			_lookup["RoadNameTexture"] = createTexture(roadNameTexture.bitmapData);
			
			_lookup["TreeDiffuse"] = createTexture(treeDiffuse.bitmapData);
			
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
		
		public function getTextureByName(name:String):BitmapTexture
		{
			return _lookup[name];
		}
		
		public function setTextureByName(name:String, data:BitmapTexture):void
		{
			_lookup[name] = data;
		}
		
		public function getCubeTextureByName(name:String):BitmapCubeTexture
		{
			return _cubeLookup[name];
		}
	}
}