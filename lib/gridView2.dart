import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String title = 'Grid List';
  var random=new Random();
  int number=0;
  bool changed=true;
  bool selected=true;
  String label='label';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SafeArea(
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 3,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(12, (index) {
              return Container(
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                    });
                    if(selected==true){
                      number =random.nextInt(100);
                    }
                    selected=false;
                    changed=!changed;
                    if(changed==true) {
                      title ='label $index';
                    }else{
                    title=number.toString();
                  }
                  },
                  child: Text('GridView $index'),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}