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
