package  
{	
	import apps.ApplicationModule;
	import apps.IEntryPoint;
	import apps.ILoadApplications;
	
	import flash.display.Loader;
	import flash.utils.Dictionary;
	
	import infrastructure.Requires;
	
	public class HarnessApplicationModel implements ILoadApplications
	{			
		private var _context:MolehillAppContext;			
		private var _loader:Loader;
		private var _loading:Boolean;		
		private var _onLoaded:Function;		
		private var _appPersistence:Dictionary = new Dictionary();	
		private var _currentApplication:ApplicationModule;
		private var _entryPointName:String; 
		private var _previousAppEntryPointName:String; 
		private var _entryPoints:Dictionary = new Dictionary();
		private var _defaultAppUrl:String;
		private var _defaultAppEntryPointName:String;
		
		public function get currentAppEntryPointName():String { return _entryPointName; }
		public function get applicationLoadedPercentage():Number { return 100; }
		
		public function get loading():Boolean
		{
			return _loading;
		}
		
		public function HarnessApplicationModel(context:MolehillAppContext, entryPoints:Dictionary)
		{
			_entryPoints = entryPoints;
			_context = context;
		}
		
		public function initialiseGlobalServices(defaultAppUrl:String, defaultAppEntryPointName:String):void 
		{
			Requires.notNull(defaultAppUrl)
			Requires.notNull(defaultAppEntryPointName)
				
			_defaultAppUrl = defaultAppUrl
			_defaultAppEntryPointName = defaultAppEntryPointName
		}	
		
		public function loadDefaultApplication():void
		{
			loadApplication(_defaultAppUrl, _defaultAppEntryPointName);
		}
			
		public function loadApplication(applicationUrl:String, entryPointName:String, onLoaded:Function=null):void 
		{	
			Requires.notNull(entryPointName);
			
			if(entryPointName != _entryPointName)
			{
				_previousAppEntryPointName = _entryPointName;
				_entryPointName = entryPointName;
			
				var entryPoint : IEntryPoint = new _entryPoints[entryPointName]() as IEntryPoint;
				var applicationType : Class = entryPoint.getApplication();
				
				if (_currentApplication != null)
				{
					_appPersistence[_previousAppEntryPointName] = _currentApplication.end();
				}
				
				_currentApplication = _context.registerApplicationModule(applicationType);
				_currentApplication.start(_appPersistence[_entryPointName] || new Object(), _appPersistence[_previousAppEntryPointName] || new Object());
				
				if (onLoaded != null)
				{
					onLoaded();
				}
			}
		}									
	}	
}