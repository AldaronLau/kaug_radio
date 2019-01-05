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
//      "schedule": schedule,
//      "about", about,
    };

    MaterialColor colorCustom = MaterialColor(0xFF880044, color);

    return new MaterialApp(
      title: 'KAUG Radio',
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

  void pause_play() {}

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
        title: new Text("Hello, World!"),
      ),
      body: ListView.builder(itemBuilder: load_post),
      floatingActionButton: new FloatingActionButton(
        onPressed: pause_play,
        tooltip: 'Listen to KAUG Radio',
        child: new Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(
              child: Image.asset(
            "images/kaug.png",
            scale: 0.25,
          )),
          ListTile(title: const Text("Home"), onTap: () {/* switch to home */}),
          ListTile(
              title: const Text("Schedule"), onTap: () {/* switch to home */}),
          ListTile(
              title: const Text("About"), onTap: () {/* switch to home */}),
        ],
      )),
    );
  }

  void refresh() {}

  void choiceAction(String choice) {
    print('works');
  }

  Widget load_post(BuildContext context, int index) {
    if (index > 10) {
      return null;
    }
    return new HtmlView(data: html);
  }
}
