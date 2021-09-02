set AIR_NOANDROIDFLAIR=true

call amxmlc -external-library-path+=Caramel64.ane .\src\CaramelAdsAdobeAIRDemo.as -output CaramelAdsAdobeAIRDemo.swf 
call adt -package  -target apk-captive-runtime -arch armv7 -storetype pkcs12 -keystore keysign.p12 -storepass qwerty  CaramelAdsAdobeAIRDemo.apk  .\src\CaramelAdsAdobeAIRDemo-app.xml CaramelAdsAdobeAIRDemo.swf  -extdir ./