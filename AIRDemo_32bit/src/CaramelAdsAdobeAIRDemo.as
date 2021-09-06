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


	public class CaramelAdsAdobeAIRDemo extends Sprite{
		private var c:Caramel = null;


		public function CaramelAdsAdobeAIRDemo(){
			super();

			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.SHOW_ALL;

			createText("Caramel demo:\nversion: 0.0.4",50,10);		

			// LOAD ADS BUTTON
			createButton("Load ADS",50,60,160,50,0x6bb9f0).addEventListener(MouseEvent.CLICK, loadClick);
			// SHOW ADS BUTTON
			createButton("Show ADS",50,130,160,50,0x6bb9f0).addEventListener(MouseEvent.CLICK, showClick);

			// CREATE CARAMEL OBJECT AND THEN INIT
			c = new Caramel();
			c.initialize();


			// ADD EVENT LISTENER
			c.addEventListener("onSdkReady",handleSdkready);
			c.addEventListener("onSdkFailed",handleSdkFailed);
			c.addEventListener("onAdLoaded",handleAdLoaded);
			c.addEventListener("onAdOpened",handleAdOpened);
			c.addEventListener("onAdClicked",handleAdClicked);
			c.addEventListener("onAdClosed",handleAdClosed);
			c.addEventListener("onAdFailed",handleAdFailed);
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
			if(c.isAdLoaded())
				c.show();
		}

		public function handleSdkready():void{
			createText("SDK is ready",50,200);
		}

		public function handleSdkFailed():void{
			createText("SDK is failed",50,240);
		}

		public function handleAdLoaded():void{
			createText("Ads is loaded",50,280);
		}

		public function handleAdOpened():void{
			createText("Ads is opened",50,320);
		}

		public function handleAdClicked():void{
			createText("Ads is clicked",50,360);
		}

		public function handleAdClosed():void{
			createText("Ads is closed",50,400);
		}

		public function handleAdFailed():void{
			createText("Ads is failed",50,440);
		}
	}
}
