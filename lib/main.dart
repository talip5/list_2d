import 'package:flutter/material.dart';
import 'dart:math';
import 'package:list_2d/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  Deneme1 deneme1 = Deneme1.Id();
  String value = 'value';
  String appBarTitle = 'GridView';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Student student7=Student('titleStudent');
  List<Widget> listWidgetClass = [Deneme1('x', Colors.greenAccent)];
  List<int> listNo = [1, 2, 3, 4, 5];

  listWidgetClassAdd() {
    for (int i = 0; i <= 10; i++) {
      if (i.isEven) {
        listWidgetClass.add(Deneme1('$i', Colors.deepPurple));
      } else {
        listWidgetClass.add(Deneme1('$i', Colors.blue));
      }
    }
  }

  @override
  void initState() {
    listWidgetClassAdd();
    //listWidgetPrint();
    //listPrint1();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle),
      ),
      //body: Deneme(),
      //body: widgetClass,
      //body: listWidgetClass[1],
      body: ListView.builder(
          itemCount: listNo.length,
          itemBuilder: (BuildContext context, int index) {
            //return Text(listWidget.length.toString());
            return listWidgetClass[index];
            //return widget35;
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton');
          print(widget.deneme1.number);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Deneme1 extends StatefulWidget {
  Student student3=Student('titleStudent');
  int number = 0;
  String page5 = 'page5';
  String label = 'label';
  Color color = Colors.white30;

  Deneme1(String label, Color color) {
    this.label = label;
    this.color = color;
  }

  Deneme1.Id() {
    this.label = label;
    this.number = number;
  }

  @override
  State<Deneme1> createState() => _Deneme1State();
}

class _Deneme1State extends State<Deneme1> {
  var random = new Random();

  String title = 'title';

  bool changed = true;
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: widget.color),
          onPressed: () {
            setState(() {
              // widget.appBarTitle='deneme35';
            });
            if (selected == true) {
              widget.number = random.nextInt(100);
            }
            selected = false;
            changed = !changed;
            if (changed == true) {
              title = 'label ${widget.label}';
            } else {
              title = widget.number.toString();
            }
            setState(() {
              widget.student3.titleStudent=widget.number.toString();
              //print(widget.student5.titleStudent=number.toString());
            });
          },
          child: Text(title),
        ),
      ),
    );
  }
}
