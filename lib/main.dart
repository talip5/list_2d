import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'GridViewBuilder';
  var random = new Random();
  int number0 = 0;
  int number1 = 0;
  int number2 = 0;
  int number3 = 0;
  int number4 = 0;
  int number5 = 0;

  bool selected0 = true;
  bool selected1 = true;
  bool selected2 = true;
  bool selected3 = true;
  bool selected4 = true;
  bool selected5 = true;

  String label0 = 'Label0';
  String label1 = 'Label1';
  String label2 = 'Label2';
  String label3 = 'Label3';
  String label4 = 'Label4';
  String label5 = 'Label5';

  bool changed = true;
  TextStyle textStyle=TextStyle(fontSize: 25.0);
  Color color1=Colors.lightGreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: GridView.builder(
        primary: false,
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          Widget widget;
          switch (index) {
            case 0:
              widget = Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: color1),
                  onPressed: () {
                    setState(() {});
                    if (selected1 == true) {
                   number0 = random.nextInt(100);
                    }
                    selected1 = false;
                    changed = !changed;
                    if (changed == true) {
                      label0 = 'Label $index';
                      color1=Colors.lightGreen;
                    } else {
                      label0 = number0.toString();
                      color1=Colors.deepPurpleAccent;
                    }
                  },
                  child: Text(label0,style: textStyle,),
                ),
              );
              break;
            case 1:
              widget = Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    if (selected1 == true) {
                      number1 = random.nextInt(100);
                    }
                    selected1 = false;
                    changed = !changed;
                    if (changed == true) {
                      label1 = 'Label $index';
                    } else {
                      label1 = number1.toString();
                    }
                  },
                  child: Text(label1,style: textStyle),
                ),
              );
              break;
            case 2:
              widget = Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    if (selected2 == true) {
                      number2 = random.nextInt(100);
                    }
                    selected2 = false;
                    changed = !changed;
                    if (changed == true) {
                      label2 = 'Label $index';
                    } else {
                      label2 = number2.toString();
                    }
                  },
                  child: Text(label2,style: textStyle),
                ),
              );
              break;
            case 3:
              widget = Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    if (selected3 == true) {
                      number3 = random.nextInt(100);
                    }
                    selected3 = false;
                    changed = !changed;
                    if (changed == true) {
                      label3 = 'Label $index';
                    } else {
                      label3 = number3.toString();
                    }
                  },
                  child: Text(label3,style: textStyle),
                ),
              );
              break;
            case 4:
              widget = Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    if (selected4 == true) {
                      number4 = random.nextInt(100);
                    }
                    selected4 = false;
                    changed = !changed;
                    if (changed == true) {
                      label4 = 'Label $index';
                    } else {
                      label4 = number4.toString();
                    }
                  },
                  child: Text(label4,style: textStyle),
                ),
              );
              break;
            default:
              widget = Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    if (selected5 == true) {
                      number5 = random.nextInt(100);
                    }
                    selected5 = false;
                    changed = !changed;
                    if (changed == true) {
                      label5 = 'Label $index';
                    } else {
                      label5 = number5.toString();
                    }
                  },
                  child: Text(label5,style: textStyle),
                ),
              );
          }
          return widget;
        },
      )),
    );
  }
}
