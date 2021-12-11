import 'package:flutter/material.dart';

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

  Widget widget35= Text('Widget');

  List<Widget> listWidget=[Text('data10'),Text('data20'),Text('data20'),
    Row(
      children: [
        ElevatedButton(onPressed: (){print('label35');},child: Text('label75'),),
        ElevatedButton(onPressed: (){print('label35');},child: Text('label75'),),
        ElevatedButton(onPressed: (){print('label35');},child: Text('label75'),),
      ],
    ),
    ElevatedButton(onPressed: (){print('label135');},child: Text('label175'),)
  ];
  //List<Widget> listWidget=[];
  int row=3;
  int col=4;
  //var twoDList= List.generate(3, (index) => 'Item $index',growable: false);
  //var twoDList= new List.generate(row, (index) =>new List(col),growable: false);

  final items = List<String>.generate(10000, (i) => "Item $i");

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
    });
    _counter++;
  }

  listWidgetPrint(){
    print(widget35.runtimeType);
  }

  listPrint(){
    const cols = 3;
    const rows = 3;
    // final array = List.generate(rows,(i) => List.generate(cols + 1, (j) => i + j * cols + 1, growable: false),growable: false);
    final array = List.generate(rows,(i) => List.generate(cols + 1, (j) => i*j+1, growable: false),growable: false);
    array.forEach((row) {
      print(row);
    });
  }

  listPrint1(){
    // List a = List.filled(3, List.filled(3, 0));
    List a1 = List.filled(3, List.filled(3, 5)); //[[5, 5, 5], [5, 5, 5], [5, 5, 5]]
    // print(a);
    print(a1);
    List a = List.generate(4, (_) => List.generate(4, (_) => 0)); //[[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]

    print(a);
  }

  listPrint2(){
    print('xxx');
  }

  @override
  void initState() {
    listWidgetPrint();
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
      body: ListView.builder(
          itemCount: listWidget.length,
          itemBuilder:(BuildContext context,int index){
            //return Text(listWidget.length.toString());
            return listWidget[index];
            //return widget35;
          }),
    );
  }
  Widget master(String label){
    return Expanded(
      child: ElevatedButton(
        onPressed: (){
          print(label);
        },
        child: Text(label),
      ),
    );
  }
}


class deneme extends StatelessWidget {
  deneme({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
    );
  }
}
