package  
{
	import flash.utils.Dictionary;
	import meshes.IMeshLookup;
	
	public class BuiltinMeshes implements IMeshLookup
	{
		[Embed(source = "../embeds/meshes/MESH_tree_1.obj", mimeType = "application/octet-stream")]
		private var MeshTree1 : Class;
		
		[Embed(source = "../embeds/meshes/MESH_tree_2.obj", mimeType = "application/octet-stream")]
		private var MeshTree2 : Class;
		
		[Embed(source = "../embeds/meshes/MESH_tree_3.obj", mimeType = "application/octet-stream")]
		private var MeshTree3 : Class;
		
		[Embed(source = "../embeds/meshes/MESH_tree_4.obj", mimeType = "application/octet-stream")]
		private var MeshTree4 : Class;
		
		[Embed(source = "../embeds/meshes/MESH_tree_5.obj", mimeType = "application/octet-stream")]
		private var MeshTree5 : Class;
		
		[Embed(source = "../embeds/meshes/MESH_tree_5.obj", mimeType = "application/octet-stream")]
		private var MeshTree6 : Class;
		
		[Embed(source = "../embeds/meshes/MESH_tree_5.obj", mimeType = "application/octet-stream")]
		private var MeshTree7 : Class;
		
		[Embed(source = "../embeds/meshes/MESH_tree_5.obj", mimeType = "application/octet-stream")]
		private var MeshTree8 : Class;
		
		[Embed(source = "../embeds/meshes/MESH_tree_5.obj", mimeType = "application/octet-stream")]
		private var MeshTree9 : Class;
		
		[Embed(source = "../embeds/meshes/MESH_tree_5.obj", mimeType = "application/octet-stream")]
		private var MeshTree10 : Class;
		
		[Embed(source = "../embeds/meshes/MESH_tree_5.obj", mimeType = "application/octet-stream")]
		private var MeshTree12 : Class;
		
		private var _lookup : Dictionary = new Dictionary();
		
		public function BuiltinMeshes() 
		{
			// Tree meshes
			_lookup["Tree1"] = MeshTree1;
			_lookup["Tree2"] = MeshTree2;
			_lookup["Tree3"] = MeshTree3;
			_lookup["Tree4"] = MeshTree4;
			_lookup["Tree5"] = MeshTree5;
			_lookup["Tree6"] = MeshTree5;
			_lookup["Tree7"] = MeshTree5;
			_lookup["Tree8"] = MeshTree5;
			_lookup["Tree9"] = MeshTree5;
			_lookup["Tree10"] = MeshTree5;
			_lookup["Tree12"] = MeshTree5;
		}
		
		public function getMeshByName(name : String) : Class
		{
			return _lookup[name];
		}
		
		public function setMeshByName(name : String, mesh : Class) : void
		{
			_lookup[name] = mesh;
		}
	}
}