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


Widget createButton(String number){
  return Expanded(
    child: MaterialButton(
      child: Text(number, style: TextStyle(fontSize:20.5, fontWeight: FontWeight.bold)),
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
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(
                vertical: 25.0,
                horizontal: 12.5,
              ),
              child: Text("0", style: TextStyle(
                fontSize: 56.0,
                fontWeight: FontWeight.bold

              )
              ),
              ),

            Expanded(child: Divider()),

            Column(children: [
                    Row(
                    children:  [
                    createButton("C"),
                    createButton("/"),
                ]
            ),
                    Row(
                    children:  [
                    createButton("7"),
                    createButton("8"),
                    createButton("9"),
                    createButton("x"),
                ]
            ),
                    Row(
                    children:  [
                    createButton("4"),
                    createButton("5"),
                    createButton("6"),
                    createButton("-"),
                ]
            ),
                    Row(
                    children:  [
                    createButton("1"),
                    createButton("2"),
                    createButton("3"),
                    createButton("+"),
                ]
            ),
                    Row(
                    children:  [
                    createButton("."),
                    createButton("0"),
                    createButton("00"),
                    createButton("="),
                ]
            )
        ])
      ],
      )));
  }
}

