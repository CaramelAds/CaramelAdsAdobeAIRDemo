set AIR_NOANDROIDFLAIR=true

call amxmlc -external-library-path+=.\..\library\caramel.ane .\src\CaramelAdsAdobeAIRDemo.as -output CaramelAdsAdobeAIRDemo.swf 

call adt -package  -target apk-captive-runtime -arch x86 -storetype pkcs12 -keystore keysign.p12 -storepass qwerty  CaramelAdsAdobeAIRDemo.apk  .\src\CaramelAdsAdobeAIRDemo-app.xml  .\mraid.js CaramelAdsAdobeAIRDemo.swf  -extdir ../library