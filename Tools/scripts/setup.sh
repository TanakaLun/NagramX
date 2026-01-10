          sed -i 's/NagramX/YukinoGram/g' settings.gradle
          sed -i 's/NagramX/YukinoGram/g' TMessagesProj/build.gradle
          sed -i 's/nu\.gpu\.nagram/io.tl.yukinogram/g' gradle.properties
          MANIFEST_PATH="TMessagesProj/src/main/AndroidManifest.xml"
          sed -i 's/android:icon="@mipmap\/ic_launcher_nagram_blue"/android:icon="@mipmap\/ic_launcher_yukino"/g' "$MANIFEST_PATH"
          sed -i 's/android:label="@string\/NagramX"/android:label="@string\/YukinoGram"/g' "$MANIFEST_PATH"
          sed -i '/<!-- usesCleartextTraffic for browser supporting opening http:\/\/ links -->/a\
        <activity-alias\
            android:enabled="true"\
            android:name="org.telegram.messenger.YukinoIcon"\
            android:targetActivity="org.telegram.ui.LaunchActivity"\
            android:icon="@mipmap/ic_launcher_yukino"\
            android:exported="true">\
\
            <intent-filter>\
                <action android:name="android.intent.action.MAIN" />\
                <category android:name="android.intent.category.LAUNCHER" />\
                <category android:name="android.intent.category.MULTIWINDOW_LAUNCHER" />\
            </intent-filter>\
            <meta-data android:name="android.app.shortcuts" android:resource="@xml/shortcuts" />\
        </activity-alias>' "$MANIFEST_PATH"