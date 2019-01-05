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
      home: new MyHomePage(title: 'KAUG Radio - Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final html = """
    <h3>New KAUG App!</h3>
    <h4>Posted by Jeron Lau on Jan 5, 2019</h4>
    <p>
    Check it out!
    </p>
""";

  int _counter = 0;

  void pause_play() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
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
        title: new Text(widget.title),
      ),
      body: ListView.builder(itemBuilder: load_post),
      floatingActionButton: new FloatingActionButton(
        onPressed: pause_play,
        tooltip: 'Listen to KAUG Radio',
        child: new Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

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
