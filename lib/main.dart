import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}


class MyApp extends StatefulWidget{
  @override
  MyAppState createState(){
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  @override
  void initState(){
    super.initState();
  }

  void myprint(){
    print("Hello This is the Statement 1");
    print("Hello This is the Statement 2");
    myfunction();
    print("Hello This is the Statement 5");
  }

  myfunction() async{
    await Future.delayed(Duration(seconds: 5),(){});
      print("Hello This is the Statement 3");
      print("Hello This is the Statement 4");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feature Async Await'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            myprint();
          },
          child: Text("Print"),
          color: Colors.teal,
        ),
      ),
    );
  }
}