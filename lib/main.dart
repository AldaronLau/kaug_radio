import 'package:flutter/material.dart';
import 'package:kaug_augsburg_radio/Constants.dart';
import 'package:flutter_html_view/flutter_html_view.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
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
    };

    Map<String, WidgetBuilder> routes = {
      "/": home,
      "schedule": schedule,
//      "about", about,
    };

    MaterialColor colorCustom = MaterialColor(0xFF880044, color);

    return new MaterialApp(
      title: Constants.app_title,
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: colorCustom,
      ),
//      home: new MyHomePage(title: 'KAUG - Home'),
      routes: routes,
    );
  }

  final html = """
    <h3>New KAUG App!</h3>
    <h4>Posted by Jeron Lau on Jan 5, 2019</h4>
    <p>
    Check it out!
    </p>
""";

  void pausePlay() {}

  Widget about(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(IconData(0xe5d5, fontFamily: 'MaterialIcons')),
              onPressed: refresh),
          PopupMenuButton<String>(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
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
        title: new Text(Constants.aboutRouteTitle),
      ),
      body: ListView.builder(itemBuilder: loadPost),
      floatingActionButton: new FloatingActionButton(
        onPressed: pausePlay,
        tooltip: Constants.listenTooltip,
        child: new Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(child: Image.asset(Constants.kaug_icon, scale: 0.25)),
          ListTile(
              title: const Text(Constants.home),
              onTap: () {
                homeRoute(context);
              }),
          ListTile(
              title: const Text(Constants.schedule),
              onTap: () {
                scheduleRoute(context);
              }),
          ListTile(
              title: const Text(Constants.about),
              onTap: () {
                aboutRoute(context);
              }),
        ],
      )),
    );
  }

  Widget schedule(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(IconData(0xe5d5, fontFamily: 'MaterialIcons')),
              onPressed: refresh),
          PopupMenuButton<String>(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
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
      floatingActionButton: new FloatingActionButton(
        onPressed: pausePlay,
        tooltip: Constants.listenTooltip,
        child: new Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(child: Image.asset(Constants.kaug_icon, scale: 0.25)),
          ListTile(
              title: const Text(Constants.home),
              onTap: () {
                homeRoute(context);
              }),
          ListTile(
              title: const Text(Constants.schedule),
              onTap: () {
                scheduleRoute(context);
              }),
          ListTile(
              title: const Text(Constants.about),
              onTap: () {
                aboutRoute(context);
              }),
        ],
      )),
    );
  }

  Widget home(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(IconData(0xe5d5, fontFamily: 'MaterialIcons')),
              onPressed: refresh),
          PopupMenuButton<String>(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
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
        title: new Text(Constants.homeRouteTitle),
      ),
      body: ListView.builder(itemBuilder: loadPost),
      floatingActionButton: new FloatingActionButton(
        onPressed: pausePlay,
        tooltip: Constants.listenTooltip,
        child: new Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(
              child: Image.asset(
            Constants.kaug_icon,
            scale: 0.25,
          )),
          ListTile(
              title: const Text(Constants.home),
              onTap: () {
                homeRoute(context);
              }),
          ListTile(
              title: const Text(Constants.schedule),
              onTap: () {
                scheduleRoute(context);
              }),
          ListTile(
              title: const Text(Constants.about),
              onTap: () {
                aboutRoute(context);
              }),
        ],
      )),
    );
  }

  // Switch to the home route
  void homeRoute(BuildContext context) {
    Navigator.push(context, MaterialPageRoute<void>(builder: home));
  }

  // Switch to the home route
  void scheduleRoute(BuildContext context) {
    Navigator.push(context, MaterialPageRoute<void>(builder: schedule));
  }

  // Switch to the home route
  void aboutRoute(BuildContext context) {
    Navigator.push(context, MaterialPageRoute<void>(builder: about));
  }

  // Download the most recent HTML to update the news feed.
  void refresh() {
    // TODO
  }

  // TODO
  void choiceAction(String choice) {
    print('works');
  }

  // Callback function for loading new posts.  After last post, returns null.
  Widget loadPost(BuildContext context, int index) {
    if (index > 10) {
      return null;
    }
    return new HtmlView(data: html);
  }
}
