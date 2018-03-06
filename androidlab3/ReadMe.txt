Name: Christopher Navy, Tung Ly, Casey Thavy
ID#
Casey - 007222124
Tung Ly - 008754993
Christopher Navy - 009181731

email:
casey.thavy@gmail.com, 
chris.navy@outlook.com,
tungply7@gmail.com

Instruction:
        Install the APK or you can import the project and build it yourself.


Gradle File:
apply plugin: 'com.android.application'

android {
    compileSdkVersion 25
    buildToolsVersion "25.0.0"
    defaultConfig {
        applicationId "navy.chris.mytube"
        minSdkVersion 19
        targetSdkVersion 25
        versionCode 1
        versionName "1.0"
        testInstrumentationRunner "android.support.test.runner.AndroidJUnitRunner"
    }
    buildTypes {
        release {
            minifyEnabled false
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
        }
    }
}

dependencies {
    compile fileTree(dir: 'libs', include: ['*.jar'])
    androidTestCompile('com.android.support.test.espresso:espresso-core:2.2.2', {
        exclude group: 'com.android.support', module: 'support-annotations'
    })
    compile files('libs/YouTubeAndroidPlayerApi.jar')
    compile files('libs/google-api-services-youtube-v3-rev124-1.19.0.jar')
    compile files('libs/google-http-client-android-1.22.0.jar')
    compile files('libs/google-api-client-android-1.22.0.jar')
    compile files('libs/google-http-client-gson-1.22.0.jar')

    compile 'com.android.support:cardview-v7:21.0.+'
    compile 'com.android.support:recyclerview-v7:21.0.+'

    compile('com.google.android.gms:play-services-auth:10.0.1')
    compile 'com.google.android.gms:play-services:10.0.1'
    compile 'com.android.support:appcompat-v7:25.0.1'
    compile 'com.android.support:design:25.0.1'
    testCompile 'junit:junit:4.12'
    compile 'com.android.support.constraint:constraint-layout:1.0.0-beta4'
}





Introduction:

The videos play fine, I wasn't able to get search to work, but Google Login is working.
Can't create and add songs to the playlist either.

Upon opening the app, there is a google sign in button. Select the google account you want to log in.
The ID Token that was going to be used to make playlists and add songs is taken from Google.
There is a prepopulated list of videos to view.
Click the Thumbnail and it takes you to the video view so you can watch it.

The signed APK MyTube.apk doesn't work, there's problems with my SHA-1 in release mode, so I can't use the Google API on there.

The debug version MyTube-debug.apk does work with Google API, so it does work.
