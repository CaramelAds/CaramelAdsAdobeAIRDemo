package
{
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	import flash.text.TextFormat;
	import com.caramelads.extension.Caramel;	
		

	public class CaramelAdsAdobeAIRDemo extends Sprite
	{

		private var c:Caramel = null;		

		public function CaramelAdsAdobeAIRDemo()
		{
			super();
		
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.SHOW_ALL;
				
			createText("Caramel demo:\nversion: 0.0.2",50,10);		

			// LOAD ADS BUTTON				
			createButton("Load ADS",50,60,160,50,0x6bb9f0).addEventListener(MouseEvent.CLICK, loadClick);
			// SHOW ADS BUTTON
			createButton("Show ADS",50,130,160,50,0x6bb9f0).addEventListener(MouseEvent.CLICK, showClick);
			
			createButton("is SDK ready",300,10,120,40,0x2ecc71).addEventListener(MouseEvent.CLICK, isSDKReady);			
			createButton("is SDK Failed",300,60,120,40,0x2ecc71).addEventListener(MouseEvent.CLICK, isSDKFailed);
			createButton("is Ads Loaded",300,110,120,40,0x2ecc71).addEventListener(MouseEvent.CLICK, isAdLoaded);			
			createButton("is Ads Opened",300,160,120,40,0x2ecc71).addEventListener(MouseEvent.CLICK, isAdOpened);
			createButton("is Ads Clicked",300,210,120,40,0x2ecc71).addEventListener(MouseEvent.CLICK, isAdClicked);
			createButton("is Ads Closed",300,260,120,40,0x2ecc71).addEventListener(MouseEvent.CLICK, isAdClosed);
			createButton("is Ads Failed",300,310,120,40,0x2ecc71).addEventListener(MouseEvent.CLICK, isAdFailed);
						
			
			// CREATE CARAMEL OBJECT AND THEN INIT	
			c = new Caramel();
			c.initialize();								
					
		}

		private function createText(text:String,x:int,y:int):void{
			var tmp:TextField = new TextField(); 
			tmp.text = text;
			tmp.autoSize = TextFieldAutoSize.CENTER;
			tmp.x=x;
			tmp.y=y;
			var format:TextFormat = new TextFormat("Arial",12);
			tmp.setTextFormat(format);
			stage.addChild(tmp);

		}

		private function createButton(text:String,x:int,y:int,width:int,height:int,color:int):SimpleButton{
			var button:SimpleButton = new SimpleButton();
			var buttonSprite:Sprite = new Sprite();
			
			buttonSprite.graphics.lineStyle(2, 0x000000);
			buttonSprite.graphics.beginFill(color,1);		
			
			buttonSprite.graphics.drawRect(x,y,width,height);
			buttonSprite.graphics.endFill();
						
			button.overState = button.downState = button.upState = button.hitTestState = buttonSprite;			
			stage.addChild(button);
			createText(text,(x+width/3),(y+height/3));
			return button
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

		private function isSDKReady( event:MouseEvent ):void {			
			if(c.isSdkReady())
				createText("SDK is ready",50,200);
			else
				createText("SDK is not ready",50,200);
		}

		private function isSDKFailed( event:MouseEvent ):void {			
			if(c.isSdkFailed())
				createText("SDK is failed",50,240);
			else
				createText("SDK is not failed",50,240);
		}

		private function isAdLoaded( event:MouseEvent ):void {			
			if(c.isAdLoaded())
				createText("Ads is loaded",50,280);
			else
				createText("Ads is not loaded",50,280);
		}

		private function isAdOpened( event:MouseEvent ):void {			
			if(c.isAdOpened())
				createText("Ads is opened",50,320);
			else
				createText("Ads is not opened",50,320);
		}

		private function isAdClicked( event:MouseEvent ):void {			
			if(c.isAdClicked())
				createText("Ads is clicked",50,360);
			else
				createText("Ads is not clicked",50,360);
		}

		private function isAdClosed( event:MouseEvent ):void {			
			if(c.isAdClosed())
				createText("Ads is closed",50,400);
			else
				createText("Ads is not closed",50,400);
		}
		
		private function isAdFailed( event:MouseEvent ):void {			
			if(c.isAdFailed())
				createText("Ads is failed",50,440);
			else
				createText("Ads is not failed",50,440);
		}



		
		
	}
}