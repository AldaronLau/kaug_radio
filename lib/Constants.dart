import 'package:flutter/material.dart';

class Constants {
  static const String appTitle = "KAUG Radio";
  static const MaterialColor appColor = MaterialColor(0xFF880044, {
    50: Color(0xFF440022),
    100: Color(0xFF55002A),
    200: Color(0xFF660033),
    300: Color(0xFF77003B),
    400: Color(0xFF880044),
    500: Color(0xFF99004C),
    600: Color(0xFFAA0055),
    700: Color(0xFFBB005D),
    800: Color(0xFFCC0066),
    900: Color(0xFFDD006E),
  });

  static final html = """
    <h3>New KAUG App!</h3>
    <h4>Posted by Jeron Lau on Jan 5, 2019</h4>
    <p>
    Check it out!
    </p>
  """;

  static const String Subscribe = "E-mail Subscribe";
  static const String Notifications = "Notifications Settings";

  static const String home = "Home";
  static const String schedule = "Schedule";
  static const String about = "About";

  static const String homeRouteTitle = "KAUG - Home";
  static const String scheduleRouteTitle = "KAUG - Schedule";
  static const String aboutRouteTitle = "KAUG - About";
  static const String settingsRouteTitle = "KAUG - Settings";

  static const String listenTooltip = "Listen to KAUG Radio";

  static const List<String> choices = <String>[Subscribe, Notifications];

  static const String kaug_icon = "images/kaug.png";
}
