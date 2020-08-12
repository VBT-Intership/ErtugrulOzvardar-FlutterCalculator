import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Simple Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


Widget buttonCreator(){
  return Expanded(
    child: MaterialButton(
      child: Text("1"),
        onPressed: () => {},
        color: Colors.deepOrange,
        textColor: Colors.white,
        padding: EdgeInsets.all(24.0),
        ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(

        child: Column(children: <Widget> [
            Text("0"),

            Expanded(child: Divider()),

            Column(children: [
                    Row(
                    children:  [
                    buttonCreator(),
                    buttonCreator(),
                    buttonCreator(),
                    buttonCreator(),
                ]
            ),
                    Row(
                    children:  [
                    buttonCreator(),
                    buttonCreator(),
                    buttonCreator(),
                    buttonCreator(),
                ]
            ),
                    Row(
                    children:  [
                    buttonCreator(),
                    buttonCreator(),
                    buttonCreator(),
                    buttonCreator(),
                ]
            ),
                    Row(
                    children:  [
                    buttonCreator(),
                    buttonCreator(),
                    buttonCreator(),
                    buttonCreator(),
                ]
            ),
                    Row(
                    children:  [
                    buttonCreator(),
                    buttonCreator(),
                    buttonCreator(),
                    buttonCreator(),
                ]
            )
        ])
      ],
      )));
  }
}

