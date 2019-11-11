ENG version / RUS версия ниже

ENG VERSION

# Caramel Adobe Air extension 

Version 9.6.0

## <a id="supported-platforms"> Supported platforms

- Android

### <a id="plugin-build-for"> Plubin build for 

- Adobe AIR 32

## <a id="installation"> Installation
1) Download file [caramel.ane](https://github.com/CaramelAds/CaramelAdsAdobeAIRDemo/blob/master/library/caramel.ane "carame l.ane")  in your project's extensions folder 
     
2) Add ANE in your project and ensure that your IDE sees it.

If following hasn't been added automatically, then add it in APP_NAME-app.xml
```
<extensions> 
     <extensionID>com.caramelads.Caramel</extensionID>
</extensions>
```

3) Seek this section in APP_NAME-app.xml
```
<android>
   <manifestAdditions><![CDATA[
```
and add following code in it

```
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
    
    <application     android:allowBackup="true" android:hardwareAccelerated="true" android:supportsRtl="true" android:usesCleartextTraffic="true"> 
    
       <activity android:name="com.caramelads.internal.consent.ConsentActivity"
            android:screenOrientation="portrait" />
        <activity android:name="com.caramelads.internal.consent.PartnersActivity"
            android:screenOrientation="portrait" />

        <activity android:name="com.caramelads.CaramelAdsActivity"
            android:configChanges="keyboardHidden|orientation|screenSize"/>
    
    
    
    
       <meta-data android:name="com.google.android.gms.version" android:value="12451000"/>
       <activity android:name="com.google.android.gms.ads.AdActivity"
            android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize"
            android:theme="@android:style/Theme.Translucent" />

        <activity
            android:name="com.mopub.mobileads.MoPubActivity"
            android:configChanges="keyboardHidden|orientation|screenSize" />
        <activity
            android:name="com.mopub.mobileads.MraidActivity"
            android:configChanges="keyboardHidden|orientation|screenSize" />
        <activity
            android:name="com.mopub.common.MoPubBrowser"
            android:configChanges="keyboardHidden|orientation|screenSize" />
        <activity
            android:name="com.mopub.mobileads.MraidVideoPlayerActivity"
            android:configChanges="keyboardHidden|orientation|screenSize" />
        <activity
            android:name="com.mopub.mobileads.RewardedMraidActivity"
            android:configChanges="keyboardHidden|orientation|screenSize" />


        <activity android:name="com.smaato.soma.interstitial.InterstitialActivity"
            android:resizeableActivity="false" android:screenOrientation="portrait" >
        </activity>
        <activity android:name="com.smaato.soma.video.VASTAdActivity"
            android:resizeableActivity="false" android:screenOrientation="portrait" >
        </activity>
        <activity android:name="com.smaato.soma.ExpandedBannerActivity"
            android:resizeableActivity="false" android:screenOrientation="portrait" >
        </activity>

        <activity
            android:name="com.aiming.mdt.adt.video.VideoActivity"
            android:configChanges="keyboardHidden|screenSize|orientation"
            android:launchMode="singleTask"
            android:screenOrientation="user"
            android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.aiming.mdt.adt.interstitial.InterstitialActivity"
            android:configChanges="keyboardHidden|screenSize|orientation"
            android:launchMode="singleTask"
            android:screenOrientation="portrait"
            android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.aiming.mdt.adt.interactive.InteractiveActivity"
            android:configChanges="keyboardHidden|screenSize|orientation"
            android:launchMode="singleTask"
            android:screenOrientation="portrait"
            android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.aiming.mdt.adt.AdtActivity"
            android:configChanges="keyboardHidden|screenSize"
            android:launchMode="singleTask"
            android:theme="@android:style/Theme.Translucent.NoTitleBar" /> 
        <uses-library
            android:name="org.apache.http.legacy"
            android:required="false" />

        <activity
            android:name="com.inmobi.ads.rendering.InMobiAdActivity"
            android:configChanges="keyboardHidden|orientation|keyboard|smallestScreenSize|screenSize|screenLayout|locale|fontScale"
            android:hardwareAccelerated="true"
            android:resizeableActivity="false"
            android:theme="@android:style/Theme.NoTitleBar" />>
        <activity
            android:name="com.unity3d.services.ads.adunit.AdUnitActivity"
            android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen"
            android:hardwareAccelerated="true"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.unity3d.services.ads.adunit.AdUnitTransparentActivity"
            android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen"
            android:hardwareAccelerated="true"
            android:theme="@android:style/Theme.Translucent.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.unity3d.services.ads.adunit.AdUnitTransparentSoftwareActivity"
            android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen"
            android:hardwareAccelerated="false"
            android:theme="@android:style/Theme.Translucent.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.unity3d.services.ads.adunit.AdUnitSoftwareActivity"
            android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen"
            android:hardwareAccelerated="false"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen" />
    </application>
   
 ```
4) The download file [mraid.js](https://github.com/CaramelAds/CaramelAdsAdobeAIRDemo/blob/master/app/src/mraid.js "mraid.js") 
and place it in folder together with APP_NAME-app.xml

========================================================================================================================================

RUS VERSION

# Caramel Adobe Air extension 

Version 9.6.0

## <a id="supported-platforms"> Поддерживаемые платформы

- Android


### <a id="plugin-build-for"> Плагин собран для 

- Adobe AIR 32

## <a id="installation"> Установка
1) Скачайте файл [caramel.ane](https://github.com/CaramelAds/CaramelAdsAdobeAIRDemo/blob/master/library/caramel.ane "caramel.ane")  в папку для расширений вашего проекта

2) Добавьте ANE в ваш проект и убедитесь, что ваша IDE видит его.

Если следующее не было добавлено автоматически, то добавьте его в APP_NAME-app.xml
```
<extensions> 
     <extensionID>com.caramelads.Caramel</extensionID>
</extensions>
```
3) в файле APP_NAME-app.xml найдите секцию

```
<android>
   <manifestAdditions><![CDATA[
```
и внее добавьте следующий код

```
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
    
    <application     android:allowBackup="true" android:hardwareAccelerated="true" android:supportsRtl="true" android:usesCleartextTraffic="true"> 
    
        <activity android:name="com.caramelads.internal.consent.ConsentActivity"
            android:screenOrientation="portrait" />
        <activity android:name="com.caramelads.internal.consent.PartnersActivity"
            android:screenOrientation="portrait" />

        <activity android:name="com.caramelads.CaramelAdsActivity"
            android:configChanges="keyboardHidden|orientation|screenSize"/>
    
    
       <meta-data android:name="com.google.android.gms.version" android:value="12451000"/>
       <activity android:name="com.google.android.gms.ads.AdActivity"
            android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize"
            android:theme="@android:style/Theme.Translucent" />

        <activity
            android:name="com.mopub.mobileads.MoPubActivity"
            android:configChanges="keyboardHidden|orientation|screenSize" />
        <activity
            android:name="com.mopub.mobileads.MraidActivity"
            android:configChanges="keyboardHidden|orientation|screenSize" />
        <activity
            android:name="com.mopub.common.MoPubBrowser"
            android:configChanges="keyboardHidden|orientation|screenSize" />
        <activity
            android:name="com.mopub.mobileads.MraidVideoPlayerActivity"
            android:configChanges="keyboardHidden|orientation|screenSize" />
        <activity
            android:name="com.mopub.mobileads.RewardedMraidActivity"
            android:configChanges="keyboardHidden|orientation|screenSize" />


        <activity android:name="com.smaato.soma.interstitial.InterstitialActivity"
            android:resizeableActivity="false" android:screenOrientation="portrait" >
        </activity>
        <activity android:name="com.smaato.soma.video.VASTAdActivity"
            android:resizeableActivity="false" android:screenOrientation="portrait" >
        </activity>
        <activity android:name="com.smaato.soma.ExpandedBannerActivity"
            android:resizeableActivity="false" android:screenOrientation="portrait" >
        </activity>

        <activity
            android:name="com.aiming.mdt.adt.video.VideoActivity"
            android:configChanges="keyboardHidden|screenSize|orientation"
            android:launchMode="singleTask"
            android:screenOrientation="user"
            android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.aiming.mdt.adt.interstitial.InterstitialActivity"
            android:configChanges="keyboardHidden|screenSize|orientation"
            android:launchMode="singleTask"
            android:screenOrientation="portrait"
            android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.aiming.mdt.adt.interactive.InteractiveActivity"
            android:configChanges="keyboardHidden|screenSize|orientation"
            android:launchMode="singleTask"
            android:screenOrientation="portrait"
            android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.aiming.mdt.adt.AdtActivity"
            android:configChanges="keyboardHidden|screenSize"
            android:launchMode="singleTask"
            android:theme="@android:style/Theme.Translucent.NoTitleBar" /> 
        <uses-library
            android:name="org.apache.http.legacy"
            android:required="false" />

        <activity
            android:name="com.inmobi.ads.rendering.InMobiAdActivity"
            android:configChanges="keyboardHidden|orientation|keyboard|smallestScreenSize|screenSize|screenLayout|locale|fontScale"
            android:hardwareAccelerated="true"
            android:resizeableActivity="false"
            android:theme="@android:style/Theme.NoTitleBar" />>
        <activity
            android:name="com.unity3d.services.ads.adunit.AdUnitActivity"
            android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen"
            android:hardwareAccelerated="true"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.unity3d.services.ads.adunit.AdUnitTransparentActivity"
            android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen"
            android:hardwareAccelerated="true"
            android:theme="@android:style/Theme.Translucent.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.unity3d.services.ads.adunit.AdUnitTransparentSoftwareActivity"
            android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen"
            android:hardwareAccelerated="false"
            android:theme="@android:style/Theme.Translucent.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.unity3d.services.ads.adunit.AdUnitSoftwareActivity"
            android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen"
            android:hardwareAccelerated="false"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen" />
    </application>
   
 ```
4) Затем скачайте файл [mraid.js](https://github.com/CaramelAds/CaramelAdsAdobeAIRDemo/blob/master/app/src/mraid.js "mraid.js") и поместите его в корень. Необходимо, что бы файл "mraid.js" после компиляции оказался в папке "assets" 
