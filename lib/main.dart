import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    home: MyApp(),debugShowCheckedModeBanner: false,
  ));

}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool value1= false ;
  bool value2= false ;
  bool value3= false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Check Box'),),
      body: Column(
        children: [
          CheckboxListTile(value: value1,title: Text('Day'),subtitle: Text('din'),activeColor: Colors.yellow, onChanged: (bool? value){
            setState(() {
              value1=value!;
            });
          }),
          CheckboxListTile(value: value2,title: Text('Day'),subtitle: Text('din'),activeColor: Colors.yellow, onChanged: (bool ? value){
            setState(() {
              value2= value!;
            });
          }),
        ],
      ),
    );
  }
}
