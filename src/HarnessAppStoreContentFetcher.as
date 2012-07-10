package  
{
	import appStore.IAppStoreService;
	
	public class HarnessAppStoreContentFetcher implements IAppStoreService
	{
		private var _apps:Array;
		
		public function HarnessAppStoreContentFetcher(apps:Array)
		{
			_apps = apps;			
		}
		
		public function get availableApps():Array
		{
			return _apps;
		}
	}
}