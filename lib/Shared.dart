import 'package:flutter/material.dart';
import 'package:kaug_augsburg_radio/Constants.dart';
import 'package:kaug_augsburg_radio/Settings.dart';

class Shared {
  static void pausePlay() {}

  static void choiceAction(String choice, BuildContext context) {
    // TODO: Email
    Settings.route(context);
  }

  static final play = new FloatingActionButton(
    onPressed: Shared.pausePlay,
    tooltip: Constants.listenTooltip,
    child: new Icon(Icons.play_arrow),
  );
}
