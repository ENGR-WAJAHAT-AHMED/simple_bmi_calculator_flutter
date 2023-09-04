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
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var weightControler = TextEditingController();
  var feetControler = TextEditingController();
  var inchControler = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BMI",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: weightControler,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                label: Text(
                  "Enter Your Weight in KG\'s",
                  style: TextStyle(color: Colors.white),
                ),
                prefixIcon: Icon(
                  Icons.scale,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: feetControler,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                label: Text(
                  "Enter Your Height in feet",
                  style: TextStyle(color: Colors.white),
                ),
                prefixIcon: Icon(
                  Icons.height,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: inchControler,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                label: Text(
                  "Enter Your Height in inch",
                  style: TextStyle(color: Colors.white),
                ),
                prefixIcon: Icon(
                  Icons.height,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                var wt = weightControler.text.toString();
                var ft = feetControler.text.toString();
                var inch = inchControler.text.toString();

                if (wt != "" && ft != "" && inch != "") {
                  var iwt = int.parse(wt);
                  var ift = int.parse(ft);
                  var iinch = int.parse(inch);

                  var tinch =(ift*12) + iinch;

                  var tcm = tinch * 2.54;

                  var tm = tcm/100;

                  var bmi = iwt/(tm*tm);

                 setState(() {
                   result = "your BMI is: ${bmi.toStringAsFixed(2)}";
                 });
                }
                else {
                  setState(() {
                    result ="please fill all the reguired blanks";
                  });
                }
              },
              child: Text(
                "Calculate",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            ),
            SizedBox(height: 20,),
            Text(
              result,
              style: TextStyle(fontSize: 20,color: Colors.white),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
