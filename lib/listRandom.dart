import 'package:flutter/material.dart';
import 'dart:math';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget widget35 = Text('Widget');
  Widget widgetClass = Deneme();
  List<int> listInt = [1, 2, 3, 4, 5];

  //List<Widget> listWidgetClass=[Deneme(),Deneme1()];
  List<Widget> listWidgetClass = [Deneme1('x',Colors.greenAccent)];

  List<Widget> listWidget = [Text('data10'), Text('data20'), Text('data20'),
    Row(
      children: [
        ElevatedButton(onPressed: () {
          print('label35');
        }, child: Text('label75'),),
        ElevatedButton(onPressed: () {
          print('label35');
        }, child: Text('label75'),),
        ElevatedButton(onPressed: () {
          print('label35');
        }, child: Text('label75'),),
      ],
    ),
    ElevatedButton(onPressed: () {
      print('label135');
    }, child: Text('label175'),)
  ];

  //List<Widget> listWidget=[];
  int row = 3;
  int col = 4;

  //var twoDList= List.generate(3, (index) => 'Item $index',growable: false);
  //var twoDList= new List.generate(row, (index) =>new List(col),growable: false);

  final items = List<String>.generate(10000, (i) => "Item $i");

  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
    _counter++;
  }

  listWidgetClassAdd() {
    for (int i = 0; i <= 10; i++) {
      if(i.isEven) {
        listWidgetClass.add(Deneme1('$i', Colors.deepPurple));
      }
      else{
        listWidgetClass.add(Deneme1('$i', Colors.blue));
      }
    }
  }

  modifyList(){
    print(listWidgetClass[1].runtimeType);
  }

  listWidgetPrint() {
    print(widget35.runtimeType);
  }

  listPrint() {
    const cols = 3;
    const rows = 3;
    // final array = List.generate(rows,(i) => List.generate(cols + 1, (j) => i + j * cols + 1, growable: false),growable: false);
    final array = List.generate(
        rows, (i) => List.generate(cols + 1, (j) => i * j + 1, growable: false),
        growable: false);
    array.forEach((row) {
      print(row);
    });
  }

  listPrint1() {
    // List a = List.filled(3, List.filled(3, 0));
    List a1 = List.filled(
        3, List.filled(3, 5)); //[[5, 5, 5], [5, 5, 5], [5, 5, 5]]
    // print(a);
    print(a1);
    List a = List.generate(4, (_) =>
        List.generate(4, (
            _) => 0)); //[[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]

    print(a);
  }

  listPrint2() {
    print('xxx');
  }

  @override
  void initState() {
    listWidgetClassAdd();
    //listWidgetPrint();
    //listPrint1();
    // TODO: implement initState
    super.initState();
  }

  listWidgetFunction() {
    return listWidget[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //body: Deneme(),
      //body: widgetClass,
      //body: listWidgetClass[1],
      body: ListView.builder(
          itemCount: listInt.length,
          itemBuilder: (BuildContext context, int index) {
            //return Text(listWidget.length.toString());
            return listWidgetClass[index];
            //return widget35;
          }),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          modifyList();
          print('FloatingActionButton');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget master(String label) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          print(label);
        },
        child: Text(label),
      ),
    );
  }
}


class Deneme extends StatelessWidget {
  Deneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
    );
  }
}

class Deneme1 extends StatefulWidget {
  String label='label';
  Color color=Colors.white30;
  Deneme1(String label,Color color){
    this.label=label;
    this.color=color;
  }

  @override
  State<Deneme1> createState() => _Deneme1State();
}

class _Deneme1State extends State<Deneme1> {
  var random=new Random();

  int number=0;

  String title='title';

  bool changed=true;
  bool selected=true;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100,
      height: 100,
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: widget.color),
          onPressed: () {
            setState(() {
            });
            if(selected==true){
              number =random.nextInt(100);
            }
            selected=false;
            changed=!changed;
            if(changed==true) {
              title ='label ${widget.label}';
            }else{
              title=number.toString();
            }
          },
          child: Text(title),
        ),
      ),
    );
  }
}
