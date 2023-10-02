import 'package:flutter/material.dart';
import 'package:sikh_prayer/Button.dart';
import 'package:sikh_prayer/first_class.dart';
import 'package:sikh_prayer/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List lst = [
      "assets/images/option_1_single.png",
      "assets/images/option_3_single.png",
      "assets/images/option_5_single.png",
      "assets/images/option_7_single.png",
      "assets/images/option_9_single.png",
      "assets/images/option_11_single.png",
      "assets/images/option_13_single.png"

    ];
    List lst2 = [
      "assets/images/option_2_single.png",
      "assets/images/option_4_single.png",
      "assets/images/option_6_single.png",
      "assets/images/option_8_single.png",
      "assets/images/option_10_single.png",
      "assets/images/option_12_single.png",
      "assets/images/option_14_single.png"
    ];
    List text = [
      "When we Wake Up",
      "When we comb our hair",
      "Feeling Scared",
      "Sneezing",
      "Praying",
      "When we feel sad",
      "When it rains "
    ];
    List text2 = [
      "When we take a bath",
      "Before we eat",
      "When we are about to travel",
      "Feeling angry",
      "Going to Bed",
      "Feeling Lonely",
      "When it snows"
    ];
    List color = [
      Colors.purple,
      Colors.pink,
      Colors.blueGrey,
      Colors.greenAccent,
      Colors.green,
      Colors.orangeAccent,
      Colors.orange,
    ];
    List color2 = [
      Colors.blue,
      Colors.blueAccent,
      Colors.green,
      Colors.red,
      Colors.purple,
      Colors.blue,
      Colors.lightBlueAccent
    ];
    return Scaffold(
      appBar: AppBar(
      title: Text(
      "LIL'SIKHS DAILY PRAYER",
      style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic ),
    ),

    actions: [
    Icon(Icons.message),
    SizedBox(width: 4,),
    Icon(Icons.settings),
    SizedBox(width: 4,),
    ],
    ),
      body: Material(
        child: ListView.builder(
          itemCount: lst.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            bool a = true;

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Button(index, a)),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 4.0),
                                decoration: BoxDecoration(
                                  color: color[index],
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0)),
                                ),
                                child: Image.asset(
                                  lst[index],

                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 4.0),
                                height: 50,
                                child: Center(
                                    child: Text(
                                  text[index],
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20,
                                  ),
                                )),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.circular(16)
                                ),
                              ),
                            ], //1st children
                          ),
                        ),
                      ),
                      Expanded(

                        child: InkWell(
                          onTap: () {
                            bool a =
                                false; //a variable is internally used for if-else purpose in upcoming screens
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Button(index, a)),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: color2[index],
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0)),
                                ),
                                child: Image.asset(
                                  lst2[index],
                                  width: 200,
                                  height: 200,
                                ),
                              ),
                              Container(
                                height: 50,
                                child: Center(
                                    child: Text(
                                  text2[index],
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 20),
                                )),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40.0)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
