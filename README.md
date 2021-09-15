Version 9.18.0
## ENG ( RUS version below )
## How to use:
1. Download file [Caramel32.ane](https://github.com/CaramelAds/CaramelAdsAdobeAIRDemo/blob/master/AIRDemo_32bit/Caramel32.ane "Caramel32.ane")  in your project's extensions folder to build 32bit application for armv7.
2. Download file [Caramel64.ane](https://github.com/CaramelAds/CaramelAdsAdobeAIRDemo/blob/master/AIRDemo_64bit/Caramel64.ane "Caramel64.ane") in your project's extensions folder to build 64bit application for armv8.

3. Add ANE in your project and ensure that your IDE sees it. If following hasn't been added automatically, then add it in APP_NAME-app.xml
    
    ```
    <extensions>
            <extensionID>com.caramelads.carameladsextension</extensionID>
    </extensions>
    ```

4. Seek this section in APP_NAME-app.xml
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

    <application   
        android:allowBackup="true" android:hardwareAccelerated="true" android:supportsRtl="true" android:usesCleartextTraffic="true">

         <activity android:name="com.caramelads.internal.consent.ConsentActivity"
            android:screenOrientation="portrait" />

        <activity android:name="com.caramelads.internal.consent.PartnersActivity"
            android:screenOrientation="portrait" />

        <activity android:name="com.caramelads.CaramelAdsActivity"
            android:configChanges="keyboardHidden|orientation|screenSize"/>

        <meta-data android:name="com.google.android.gms.version" android:value="12451000"/>

        <!--Include the AdActivity configChanges and theme. -->
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

        <activity android:name="com.inmobi.ads.rendering.InMobiAdActivity"
            android:configChanges="keyboardHidden|orientation|keyboard|smallestScreenSize|screenSize"
            android:theme="@android:style/Theme.Translucent.NoTitleBar"
            android:hardwareAccelerated="true" />

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



## <a id="supported-platforms"> Supported platforms

- Android

## <a id="plugin-build-for"> Plubin build for

- Adobe AIR 33

## <a id="installation 32/64 bit"> Installation


# Methods of Caramel class

## <a id="installation"> Methods for loading and initialize Sdk
    initialize() - needs to called at first beginning, this method prepare Sdk to work
    cache() - caching ads method, caching is a long runtime procedure and should be monitored by event listeners
    show() - showing ads method if was previously loaded with the cache() method

## <a id="installation"> Status check methods
    The methods you can be called at any time, used in a timer or loop like "for", "while" to track the status of a ads, or check ready status of Sdk

    isSdkReady() - returns true if Sdk is ready to run
    isSdkFailed() - returns true if errors occurred in Sdk
    isAdLoaded() - returns true if the ad was loaded by the cache() method
    isAdOpened() - returns true if the ad was shown using the show() method
    isAdClicked() - returns true if there was a click on the displayed ad
    isAdClosed() -  returns true if the ad was closed by the close button
    isAdFailed() -  returns true if an error occurred during ad serving

## <a id="installation"> Event listeners
    For each event listener, you can set your own method that will be executed after the event corresponding to the listener has occurred

    "onSdkReady" - calls the specified method when the Sdk is ready to run
    "onSdkFailed" - calls the specified method when errors occur in Sdk
    "onAdLoaded" - calls the specified method when the ad has been loaded by the cache()
    "onAdOpened" - calls the specified method when the ad has been shown with the show()
    "onAdClicked" - calls the specified method when there was a click on the displayed ad
    "onAdClosed" - calls the specified method when the ad was closed by the close button
    "onAdFailed" - calls the specified method when an error occurs during ad serving

========================================================================================================================================

RUS VERSION

# Caramel Adobe Air extension

Version 9.18.0

## <a id="supported-platforms"> Поддерживаемые платформы

- Android


## <a id="plugin-build-for"> Плагин собран для

- Adobe AIR 33

## <a id="installation"> Установка
1) Скачайте файл [Caramel32.ane](https://github.com/CaramelAds/CaramelAdsAdobeAIRDemo/blob/master/AIRDemo_32bit/Caramel32.ane "Caramel32.ane") в папку для расширений вашего проекта для сборки 32 разрядных приложений под архитектуру armv7.
Скачайте файл [Caramel64.ane](https://github.com/CaramelAds/CaramelAdsAdobeAIRDemo/blob/master/AIRDemo_64bit/Caramel64.ane "Caramel64.ane") в папку для расширений вашего проекта для сборки 64 разрядных приложений под архитектуру armv8.

2) Добавьте ANE в ваш проект и убедитесь, что ваша IDE видит его.

Если следующее не было добавлено автоматически, то добавьте это в APP_NAME-app.xml
```
<extensions>
        <extensionID>com.caramelads.carameladsextension</extensionID>
</extensions>
```
3) в файле APP_NAME-app.xml найдите секцию

```
<android>
   <manifestAdditions><![CDATA[
```
и добавьте следующий код в эту секцию

```
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>

    <application   
        android:allowBackup="true" android:hardwareAccelerated="true" android:supportsRtl="true" android:usesCleartextTraffic="true">

         <activity android:name="com.caramelads.internal.consent.ConsentActivity"
            android:screenOrientation="portrait" />

        <activity android:name="com.caramelads.internal.consent.PartnersActivity"
            android:screenOrientation="portrait" />

        <activity android:name="com.caramelads.CaramelAdsActivity"
            android:configChanges="keyboardHidden|orientation|screenSize"/>

        <meta-data android:name="com.google.android.gms.version" android:value="12451000"/>

        <!--Include the AdActivity configChanges and theme. -->
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

        <activity android:name="com.inmobi.ads.rendering.InMobiAdActivity"
            android:configChanges="keyboardHidden|orientation|keyboard|smallestScreenSize|screenSize"
            android:theme="@android:style/Theme.Translucent.NoTitleBar"
            android:hardwareAccelerated="true" />

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

# Методы класса Caramel

## <a id="installation"> Методы загрузки и инициализации
    initialize() - необходимо вызывать в самом начале, подготавливает Sdk
    cache() - кэщирование рекламы, это метод длительного времени выполнения, поэтому его следует отслеживать прослушивателями событий
    show() - показ рекламы если она была предварительно загружена методом cache()

## <a id="installation"> Методы проверки состояния
    Перечисленные ниже методы можно вызвать в любой момент времени, использовать в таймере или цикле для отслеживания состояния рекдамы или
    загрузхки Sdk

    isSdkReady() - возвращает true если Sdk готов к работе
    isSdkFailed() - возвращает true если в Sdk возникли ошибки
    isAdLoaded() - возвращает true если реклама была загружена методом cache()
    isAdOpened() - возвращает true если реклама была показана методом show()
    isAdClicked() - возвращает true если был клик по показанной рекламе
    isAdClosed() -  возвращает true если реклама была закрыта по кнопке закрытия
    isAdFailed() -  возвращает true если во время показа рекламы возникла ошибка

## <a id="installation"> Слушатели событий
    На каждый слушатель события можно установить свой метод который бьудет выполнен после того как произхойдет событие соотвествующее слушателю

    "onSdkReady" - вызывает указанный метод когда Sdk готов к работе
    "onSdkFailed" - вызывает указанный метод когда в Sdk возникли ошибки
    "onAdLoaded" - вызывает указанный метод когда реклама была загружена методом cache()
    "onAdOpened" - вызывает указанный метод когда реклама была показана методом show()
    "onAdClicked" - вызывает указанный метод когда был клик по показанной рекламе
    "onAdClosed" - вызывает указанный метод когда реклама была закрыта по кнопке закрытия
    "onAdFailed" - вызывает указанный метод когда во время показа рекламы возникла ошибка
