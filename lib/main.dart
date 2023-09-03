import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

var weightControler = TextEditingController();
var feetControler = TextEditingController();
var inchControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("BMI CALCULATOR",style: TextStyle(
          fontWeight: FontWeight.w500
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 25,right: 25),
        child: Column(

          children: [
            Text("BMI",style: TextStyle(
              fontSize: 24,fontWeight: FontWeight.w500
            ),),
            TextField(
              controller: weightControler,
              cursorColor: Color(0xff8F0000),
              decoration: InputDecoration(
                label: Text("Enter Your Weight in KG\'s",style: TextStyle(color: Color(0xff8F0000)),),
                prefixIcon: Icon(Icons.scale,size: 20,color: Color(0xff8F0000),),
              ),
              keyboardType: TextInputType.number,

            ),
            TextField(
              controller: feetControler,
              cursorColor: Color(0xff8F0000),
              decoration: InputDecoration(
                label: Text("Enter Your Height in feet",style: TextStyle(color: Color(0xff8F0000)),),
                prefixIcon: Icon(Icons.height,size: 20,color: Color(0xff8F0000),),
              ),
              keyboardType: TextInputType.number,

            ),
            TextField(
              controller: inchControler,
              cursorColor: Color(0xff8F0000),
              decoration: InputDecoration(
                label: Text("Enter Your Height in inch",style: TextStyle(color: Color(0xff8F0000)),),
                prefixIcon: Icon(Icons.height,size: 20,color: Color(0xff8F0000),),
              ),
              keyboardType: TextInputType.number,


            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
