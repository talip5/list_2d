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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> listWidget=[Text('data10'),Text('data20'),Text('data20')];
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
    listPrint1();
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
      body: Container(
        color: Color(0xFFFFFF00),
        width: 300,
        height: 300,
        margin: EdgeInsets.all(20.0),
        //padding: EdgeInsets.all(2.0),
        child: Column(
          children: [
            //Text('deneme'),
            //listWidget[1],
            //listWidget.first,
            //listWidgetFunction(),
            //master('label'),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      print('List1');
                    },
                    child: Text('List1'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      print('List2');
                    },
                    child: Text('List2'),
                  ),
                ),
                master('list35'),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      print('List1');
                    },
                    child: Text('List1'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      print('List2');
                    },
                    child: Text('List2'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
