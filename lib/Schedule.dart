import 'package:flutter/material.dart';
import 'package:kaug_augsburg_radio/Shared.dart';
import 'package:kaug_augsburg_radio/Constants.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import 'package:kaug_augsburg_radio/About.dart';
import 'package:kaug_augsburg_radio/Home.dart';

class Schedule {
  // Callback function for loading new posts.  After last post, returns null.
  static Widget loadPost(BuildContext context, int index) {
    if (index > 10) {
      return null;
    }
    return new HtmlView(data: Constants.html);
  }

  static Widget schedule(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          PopupMenuButton<String>(onSelected: (String choice) {
            Shared.choiceAction(choice, context);
          }, itemBuilder: (BuildContext context) {
            return Constants.choices.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          })
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(Constants.scheduleRouteTitle),
      ),
      body: ListView.builder(itemBuilder: loadPost),
      floatingActionButton: Shared
          .play, // This trailing comma makes auto-formatting nicer for build methods.
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(child: Image.asset(Constants.kaug_icon, scale: 0.25)),
          ListTile(
              title: const Text(Constants.home),
              onTap: () {
                Home.homeRoute(context);
              }),
          ListTile(
              title: const Text(Constants.schedule),
              onTap: () {
                Schedule.scheduleRoute(context);
              }),
          ListTile(
              title: const Text(Constants.about),
              onTap: () {
                About.aboutRoute(context);
              }),
        ],
      )),
    );
  }

// Switch to the home route
  static void scheduleRoute(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute<void>(builder: schedule));
  }
}
