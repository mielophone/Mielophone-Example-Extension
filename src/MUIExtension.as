package
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mielophone.extensions.IMUIExtension;
	
	import mx.controls.Alert;
	import mx.controls.Button;
	import mx.core.FlexGlobals;

	public class MUIExtension implements IMUIExtension
	{	
		public function MUIExtension()
		{
			var b:Button = new Button();
			b.label = 'Example Extension Button';
			b.addEventListener(MouseEvent.CLICK, onClick);
			
			FlexGlobals.topLevelApplication.homeView.addElement(b);
		}
		
		private function onClick(e:Event):void{
			Alert.show("This is example event!");
		}
		
		// plugin details
		public function get PLUGIN_NAME():String{
			return "Example Extension";
		}
		
		public function get AUTHOR_NAME():String{
			return "yamalight";
		}
	}
}