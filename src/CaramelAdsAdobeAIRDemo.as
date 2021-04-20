package
{
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	import com.caramelads.extension.Caramel;

	public class CaramelAdsAdobeAIRDemo extends Sprite
	{

		private var c:Caramel = null;

		public function CaramelAdsAdobeAIRDemo()
		{
			super();
		
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.SHOW_ALL;
			
			var titleText:TextField = new TextField(); 
			titleText.text = "Caramel demo";
			titleText.autoSize = TextFieldAutoSize.CENTER;

			stage.addChild(titleText);

			// LOAD ADS BUTTON
			var loadButton:SimpleButton = new SimpleButton();
			var loadButtonSprite:Sprite = new Sprite();
			loadButtonSprite.graphics.lineStyle(1, 0x555555);
			loadButtonSprite.graphics.beginFill(0xff000,1);
			
			loadButtonSprite.graphics.drawRect(50,200,200,50);
			loadButtonSprite.graphics.endFill();
						
			loadButton.overState = loadButton.downState = loadButton.upState = loadButton.hitTestState = loadButtonSprite;
			loadButton.addEventListener(MouseEvent.CLICK, loadClick);
			stage.addChild(loadButton);


			var loadButtonText:TextField = new TextField(); 
			loadButtonText.text = "Load ADS";
			loadButtonText.autoSize = TextFieldAutoSize.CENTER;
			loadButtonText.y=215;
			loadButtonText.x=100;
			stage.addChild(loadButtonText);
		

			// SHOW ADS BUTTON
			var showButton:SimpleButton = new SimpleButton();
			var showButtonSprite:Sprite = new Sprite();
			showButtonSprite.graphics.lineStyle(1, 0x555555);
			showButtonSprite.graphics.beginFill(0xff000,1);
			
			showButtonSprite.graphics.drawRect(50,300,200,50);
			showButtonSprite.graphics.endFill();
						
			showButton.overState = showButton.downState = showButton.upState = showButton.hitTestState = showButtonSprite;
			showButton.addEventListener(MouseEvent.CLICK, showClick);
			stage.addChild(showButton);

			var showButtonText:TextField = new TextField(); 
			showButtonText.text = "Show ADS";
			showButtonText.autoSize = TextFieldAutoSize.CENTER;
			showButtonText.y=315;
			showButtonText.x=100;
			stage.addChild(showButtonText);
			
			
			// CREATE CARAMEL OBKEVC AND THEN INIT	
			c = new Caramel();
			c.initialize();					
					
		}

	
		// CACHE METHOD
		private function loadClick( event:MouseEvent ):void {				
			c.cache();				
		}

		// SHOW ADS METHOD WITH CHECHING
		private function showClick( event:MouseEvent ):void {					
			if(c.isLoaded())
				c.show();								
		}
	}
}