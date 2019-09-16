package
{
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	import com.caramelads.nativeExtensions.Caramel.Caramel;

	public class CaramelAdsAdobeAIRDemo extends Sprite
	{

		private var c:Caramel = null;
		public function CaramelAdsAdobeAIRDemo()
		{
			super();
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.SHOW_ALL;
			
			var textField:TextField = new TextField(); 
			textField.text = "CaramelAdsAdobeAIRDemo";
			textField.autoSize = TextFieldAutoSize.LEFT;
	
			stage.addChild( textField );
			
			var goButton:SimpleButton = new SimpleButton();
			
			var myButtonSprite:Sprite = new Sprite();
			myButtonSprite.graphics.lineStyle(1, 0x555555);
			myButtonSprite.graphics.beginFill(0xff000,1);
			
			myButtonSprite.graphics.drawRect(50,200,200,50);
			myButtonSprite.graphics.endFill();
			
			
			goButton.overState = goButton.downState = goButton.upState = goButton.hitTestState = myButtonSprite;
			goButton.addEventListener( MouseEvent.CLICK, handleClick );
			stage.addChild(goButton);
			
			c = new Caramel();
					
		}
		
		private function handleClick( event:MouseEvent ):void {	
			if (!c.isLoaded()) {
				c.cache();
		
			} else {
				c.show();
			}
			
		}
	}
}