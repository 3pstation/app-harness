package
{
	import apps.ILoadApplications;
	import appStore.AppStoreItemModel;
	import appStore.IAppStoreService;
	import flash.utils.Dictionary;
	import flash.utils.getDefinitionByName;
	import infrastructure.ApplicationParameters;
	import mx.core.Application;
	
	public class HarnessApplication extends Application
	{		
		private const ENTRY_POINT_APP_NAME:String = "OrbitApp";
		private const ENTRY_POINT_APP_CLASS:Class = OrbitAppEntryPoint;
		
		protected var _context:MolehillAppContext;
		protected var _appStoreContentFetcher:HarnessAppStoreContentFetcher;
		protected var _applicationModel:HarnessApplicationModel;		
		
		public function start():void
		{
			_context = new MolehillAppContext(
          this, 
          new ApplicationParameters(parameters), 
          new BuiltinTextures(), 
          new BuiltinFonts(), 
          new BuiltinMeshes(),
          onPlatformSpinUpComplete
      );
		}
		
		private function onPlatformSpinUpComplete():void
		{						
			var app : AppStoreItemModel = new AppStoreItemModel();				
			app.appName = ENTRY_POINT_APP_NAME;		
			app.displayName = ENTRY_POINT_APP_NAME;
			app.iconUrl = "";
			app.appUrl = "";
			app.entryPointName = ENTRY_POINT_APP_NAME + "AppEntryPoint";
					
			_appStoreContentFetcher = new HarnessAppStoreContentFetcher([app]);
			
			var entryPoints:Dictionary = new Dictionary();
			entryPoints[app.entryPointName] = ENTRY_POINT_APP_CLASS;
			
			_applicationModel = new HarnessApplicationModel(_context, entryPoints)
			var applicationModel : ILoadApplications = mapApplicationInfrastructureTypes();
			
			createAppInfrastructure(app, applicationModel);
		}
		
		private function createAppInfrastructure(defaultApp : AppStoreItemModel, applicationModel : ILoadApplications):void 
		{			
			applicationModel.initialiseGlobalServices(defaultApp.appUrl, defaultApp.entryPointName);
			applicationModel.loadApplication(defaultApp.appUrl, defaultApp.entryPointName);	
		}		
		
		private function mapApplicationInfrastructureTypes():ILoadApplications
		{
			_context.services.mapValue(ILoadApplications, _applicationModel);
			_context.services.mapValue(MolehillAppContext, _context);	
			_context.services.mapValue(IAppStoreService, _appStoreContentFetcher);
			return _context.services.getInstance(ILoadApplications);
		}		
	}
}
