import 'package:flutter/material.dart';
import 'screen.dart';

void main() {
  runApp(const MaterialApp(
    home: Splash_screen(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var InchController = TextEditingController();
  var result = "";
  var bgcolor = Colors.indigo.shade100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'YOUR BMI',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: bgcolor,
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'BMI',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 21),
                  TextField(
                    controller: wtController,
                    decoration: InputDecoration(
                      label: Text('Enter Your Weight (in kg)'),
                      prefixIcon: Icon(Icons.line_weight),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 11),
                  TextField(
                    controller: ftController,
                    decoration: InputDecoration(
                      label: Text('Enter Your Height (in feet)'),
                      prefixIcon: Icon(Icons.height),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 11),
                  TextField(
                    controller: InchController,
                    decoration: InputDecoration(
                      label: Text('Enter Your Height (in Inch)'),
                      prefixIcon: Icon(Icons.height),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 18),
                  ElevatedButton(
                    onPressed: () {
                      var wt = wtController.text.toString();
                      var ft = ftController.text.toString();
                      var Inch = InchController.text.toString();

                      if (wt != "" && ft != "" && Inch != "") {
                        // BMI calculate
                        var iwt = int.parse(wt);
                        var ift = int.parse(ft);
                        var iInch = int.parse(Inch);

                        var tInch = (ift * 12) + iInch;

                        var tcm = tInch * 2.54;

                        var tM = tcm / 100;

                        var bmi = iwt / (tM * tM);

                        var msg = "";

                        if (bmi > 25) {
                          msg = "You're OverWeight!!";
                          bgcolor = Colors.orange.shade200;
                        } else if (bmi < 18) {
                          msg = "You're UnderWeight!!";
                          bgcolor = Colors.red.shade200;
                        } else {
                          msg = "You're Healthy!!";
                          bgcolor = Colors.green.shade200;
                        }

                        setState(() {
                          result =
                              "$msg \n Your BMI is : ${bmi.toStringAsFixed(2)}";
                        });
                      } else {
                        setState(() {
                          result = "Please fill all the required blanks !";
                        });
                      }
                    },
                    child: Text('Calculate'),
                  ),
                  SizedBox(height: 15),
                  Text(
                    result,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 36),
                  ListTile(
                    trailing: Text(
                      'Rishikesh Raj \n TASKFORCE ',
                      style: TextStyle(fontSize: 7),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
