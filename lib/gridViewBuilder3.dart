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

  bool changed = true;
  String label = 'label';

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
                      onPressed: () {
                        setState(() {});
                        if (selected1 == true) {
                          number0 = random.nextInt(100);
                        }
                        selected1 = false;
                        changed = !changed;
                        if (changed == true) {
                          title = 'label $index';
                        } else {
                          title = number0.toString();
                        }
                      },
                      child: Text('GridView $index'),
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
                          title = 'label $index';
                        } else {
                          title = number1.toString();
                        }
                      },
                      child: Text('GridView $index'),
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
                          title = 'label $index';
                        } else {
                          title = number2.toString();
                        }
                      },
                      child: Text('GridView $index'),
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
                          title = 'label $index';
                        } else {
                          title = number3.toString();
                        }
                      },
                      child: Text('GridView $index'),
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
                          title = 'label $index';
                        } else {
                          title = number4.toString();
                        }
                      },
                      child: Text('GridView $index'),
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
                          title = 'label $index';
                        } else {
                          title = number5.toString();
                        }
                      },
                      child: Text('GridView $index'),
                    ),
                  );
              }
              return widget;
            },
          )),
    );
  }
}
