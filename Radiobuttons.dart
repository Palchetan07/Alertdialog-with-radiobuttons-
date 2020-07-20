import 'package:flutter/material.dart';

void main() => runApp(new MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedId;

  Widget _buildDialog() {
    return new SimpleDialog(
      title: new Text("New Dialog"),
      children: <Widget>[
        new Container(
            padding: const EdgeInsets.all(10.0),
            child: new DropdownButton(
              hint: const Text("Pick a thing"),
              value: _selectedId,
              onChanged: (String value) {
                setState(() {
                  _selectedId = value;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: const Text("Test"),
        ),
        body: new ListView(padding: const EdgeInsets.all(32.0), children: [
          new Container(
              padding: const EdgeInsets.all(10.0),
              child: new DropdownButton<String>(
                hint: const Text("Pick a thing"),
                value: _selectedId,
                onChanged: (String value) {
                  setState(() {
                    _selectedId = value;
                  });
                },
                items: <String>['One', 'Two', 'Free', 'Four'].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
              )),
        ]),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          tooltip: "New Dialog",
          onPressed: () {
            showDialog(context: context,builder: (_) => MyDialogDemo() );
          },
        ));
  }
}


class MyDialogDemo extends StatefulWidget {
  MyDialogDemo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyDialogDemoState createState() => new _MyDialogDemoState();
}

class _MyDialogDemoState extends State<MyDialogDemo>{
  String _selectedId;
  @override
  Widget build(BuildContext context){
    return new SimpleDialog(
      title: new Text("New Dialog"),
      children: <Widget>[
        new Container(
            padding: const EdgeInsets.all(10.0),
            child: new DropdownButton(
              hint: const Text("Pick a thing"),
              value: _selectedId,
              onChanged: (String value) {
                setState(() {
                  _selectedId = value;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
            )),
      ],
    );
  }
}
