# "KAUG Radio" App
The KAUG app for Android.

## Setting up development
You will need the Android SDK and the Flutter SDK.  Download & Install the Android SDK.

Once the Android SDK is installed, navigate to File>Settings>Plugins>Browse repositories.  Now search for "Flutter", and install.  Press "accept" and then "yes".  Exit that window, and press "OK".  Now, you should be prompted to restart, press "restart".

Install the Flutter SDK from here: https://flutter.io/get-started/install/

Download and extract the Zip file.  On Linux, add flutter to the path with
```bash
export PATH=`pwd`/flutter/bin:$PATH
```

Now accept Google's license by running
```bash
flutter doctor --android-licenses
```

Make sure that everything is all set:
```
flutter doctor
```

## Connect a device
If you have an Android device, go into your settings and enable developer mode.  This is done by going into about device and tapping Build Number many times, then you can just plug it in and press the green arrow to install & run the app.

If you don't have an Android device go to Tools > AVD Manager > Create A Virtual Device ... and probably just install the Virtual Device that's already selected.  Afterwards, your Virtual Device will show up under Tools > AVD Manager, and you can press the Arrow under Actions to launch it.  Now you can press the green arrow to install & run the app.

Once you have the Android device plugged in, or the Virtual Device running, all you have to do is press the green arrow to install & run the app.
