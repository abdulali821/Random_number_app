import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var myNum = "1";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text("Random Numbers App", style: TextStyle(
        color: Colors.white,
      ),),
    ),
      body: Center(child: Text(myNum,style: TextStyle(
        fontSize: 100,
        fontWeight: FontWeight.w300,
      ),
     ),
    ),
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.black54,
       child: Icon(Icons.add_circle),
       onPressed: (){
         myNum = Random().nextInt(100).toString();
         setState(() {});
       },
     ),
   );
  }
}