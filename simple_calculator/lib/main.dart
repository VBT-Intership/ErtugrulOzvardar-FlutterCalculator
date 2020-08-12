import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyCalculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'VBT Calculator'),
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

  String output = "0";

  String _output ="0";
  double number1 = 0.0;
  double number2 = 0.0;
  String operant = "";


  pressButton(String pressed){
    if(pressed == "CLEAR") {
        String _output ="0";
        double number1 = 0.0;
        double number2 = 0.0;
        String operant = "";
    } else if(pressed == "+" || pressed == "-" || pressed == "/"  || pressed == "*"  ) {

      number1 = double.parse(output);

      operant = pressed;

      _output = "0";
    } else if (pressed == ".") {
      if(_output.contains(".")){
        print("Sayi zaten ondalik iceriyor!");
        return;
      } else {
        _output = _output + pressed;
      }
    } else if (pressed == "=") {
      number2 = double.parse(output);

      if(operant == "+"){
        _output = (number1 + number2).toString();
      }

      if(operant == "-"){
        _output = (number1 - number2).toString();
      }

      if(operant == "/"){
        _output = (number1 / number2).toString();
      }

      if(operant == "*"){
        _output = (number1 * number2).toString();
      }

      number1 = 0.0;
      number2 = 0.0;
      operant = "";

    } else {
      _output = _output + pressed;
    }
    print(_output);

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });

  }

Widget createButton(String pressed){
  return Expanded(
    child: MaterialButton(
      child: Text(pressed, style: TextStyle(fontSize:20.5, fontWeight: FontWeight.bold)),
        onPressed: () =>
          pressButton(pressed),
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
              child: Text(output, style: TextStyle(
                fontSize: 56.0,
                fontWeight: FontWeight.bold

              )
              ),
              ),

            Expanded(child: Divider(color: Colors.blueGrey, thickness: 6,), ),

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

