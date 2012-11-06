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
		
		[Embed(source="../embeds/wallDiffuse.jpg")]
		private static var WallTextureAtlas:Class;
		public var wallTextureAtlas:Bitmap = new WallTextureAtlas();
		
		[Embed(source="../embeds/wallSpecular.png")]
		private static var WallSpecularAtlas:Class;
		public var wallSpecularAtlas:Bitmap = new WallSpecularAtlas();
		
		[Embed(source="../embeds/roofDiffuse.jpg")]
		private static var Roof:Class;
		public var roof:Bitmap = new Roof();
		
		[Embed(source="../embeds/roofSpecular.png")]
		private static var RoofSpecular:Class;
		public var roofSpecular:Bitmap = new RoofSpecular();		

		// Lcm Terrain Textures		
		[Embed(source="../embeds/LcmTerrainTextures/Texture0.png")]
		private static var LcmTexture0:Class
		public var lcmTexture0:Bitmap = new LcmTexture0();

		[Embed(source="../embeds/LcmTerrainTextures/Texture1.png")]
		private static var LcmTexture1:Class
		public var lcmTexture1:Bitmap = new LcmTexture1();

		[Embed(source="../embeds/LcmTerrainTextures/Texture2.png")]
		private static var LcmTexture2:Class
		public var lcmTexture2:Bitmap = new LcmTexture2();

		[Embed(source="../embeds/LcmTerrainTextures/Texture3.png")]
		private static var LcmTexture3:Class
		public var lcmTexture3:Bitmap = new LcmTexture3();

		[Embed(source="../embeds/LcmTerrainTextures/Texture4.png")]
		private static var LcmTexture4:Class
		public var lcmTexture4:Bitmap = new LcmTexture4();

		[Embed(source="../embeds/LcmTerrainTextures/Texture5.png")]
		private static var LcmTexture5:Class
		public var lcmTexture5:Bitmap = new LcmTexture5();

		[Embed(source="../embeds/LcmTerrainTextures/Texture6.png")]
		private static var LcmTexture6:Class
		public var lcmTexture6:Bitmap = new LcmTexture6();

		[Embed(source="../embeds/LcmTerrainTextures/Texture7.png")]
		private static var LcmTexture7:Class
		public var lcmTexture7:Bitmap = new LcmTexture7();

		[Embed(source="../embeds/LcmTerrainTextures/Texture8.png")]
		private static var LcmTexture8:Class
		public var lcmTexture8:Bitmap = new LcmTexture8();

		[Embed(source="../embeds/LcmTerrainTextures/Texture9.png")]
		private static var LcmTexture9:Class
		public var lcmTexture9:Bitmap = new LcmTexture9();

		[Embed(source="../embeds/LcmTerrainTextures/Texture10.png")]
		private static var LcmTexture10:Class
		public var lcmTexture10:Bitmap = new LcmTexture10();

		[Embed(source="../embeds/LcmTerrainTextures/Texture11.png")]
		private static var LcmTexture11:Class
		public var lcmTexture11:Bitmap = new LcmTexture11();

		[Embed(source="../embeds/LcmTerrainTextures/Texture12.png")]
		private static var LcmTexture12:Class
		public var lcmTexture12:Bitmap = new LcmTexture12();

		[Embed(source="../embeds/LcmTerrainTextures/Texture13.png")]
		private static var LcmTexture13:Class
		public var lcmTexture13:Bitmap = new LcmTexture13();
		
		[Embed(source="../embeds/LcmTerrainTextures/Texture14.png")]
		private static var LcmTexture14:Class
		public var lcmTexture14:Bitmap = new LcmTexture14();		

		[Embed(source="../embeds/LcmTerrainTextures/Texture15.png")]
		private static var LcmTexture15:Class
		public var lcmTexture15:Bitmap = new LcmTexture15();	
		
		// water
		[Embed(source="../embeds/LcmTerrainTextures/WaterGradient.png")] 
		private static var WaterGradient:Class;
		public var waterGradient:Bitmap = new WaterGradient();
		
		[Embed(source="../embeds/LcmTerrainTextures/WaterBump.png")]
		private static var WaterBump:Class;
		public var waterBump:Bitmap = new WaterBump();		
		// end Lcm terrain textures						
		
		
		[Embed(source="../embeds/roadDiffuse.png")]
		private static var RoadsDiffuse:Class;
		public var roadsDiffuse:Bitmap = new RoadsDiffuse();
		
		[Embed(source="../embeds/railDiffuse.png")]
		private static var RailDiffuse:Class;
		public var railDiffuse:Bitmap = new RailDiffuse();
		
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
			_lookup["BuildingRoofDiffuse"] = createTexture(roof.bitmapData);
			_lookup["BuildingRoofSpecular"] = createTexture(roofSpecular.bitmapData);
			_lookup["BuildingWallDiffuse"] = createTexture(wallTextureAtlas.bitmapData);
			_lookup["BuildingWallSpecular"] = createTexture(wallSpecularAtlas.bitmapData);
			
			// Lcm Texture Start
			_lookup["LcmTexture0"] = createTexture(lcmTexture0.bitmapData);
			_lookup["LcmTexture1"] = createTexture(lcmTexture1.bitmapData);
			_lookup["LcmTexture2"] = createTexture(lcmTexture2.bitmapData);
			_lookup["LcmTexture3"] = createTexture(lcmTexture3.bitmapData);
			_lookup["LcmTexture4"] = createTexture(lcmTexture4.bitmapData);
			_lookup["LcmTexture5"] = createTexture(lcmTexture5.bitmapData);
			_lookup["LcmTexture6"] = createTexture(lcmTexture6.bitmapData);
			_lookup["LcmTexture7"] = createTexture(lcmTexture7.bitmapData);
			_lookup["LcmTexture8"] = createTexture(lcmTexture8.bitmapData);
			_lookup["LcmTexture9"] = createTexture(lcmTexture9.bitmapData);
			_lookup["LcmTexture10"] = createTexture(lcmTexture10.bitmapData);
			_lookup["LcmTexture11"] = createTexture(lcmTexture11.bitmapData);
			_lookup["LcmTexture12"] = createTexture(lcmTexture12.bitmapData);
			_lookup["LcmTexture13"] = createTexture(lcmTexture13.bitmapData);			
			_lookup["LcmTexture14"] = createTexture(lcmTexture14.bitmapData);	
			_lookup["LcmTexture15"] = createTexture(lcmTexture15.bitmapData);	
						
			_lookup["WaterBump"] = createTexture(waterBump.bitmapData);
			_lookup["WaterGradient"] = createTexture(waterGradient.bitmapData);
			// Lcm Texture End
						
			_lookup["RoadsDiffuse"] = createTexture(roadsDiffuse.bitmapData);
			_lookup["RoadNameTexture"] = createTexture(roadNameTexture.bitmapData);
			
			_lookup["RailDiffuse"] = createTexture(railDiffuse.bitmapData);
			
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
