import 'package:flutter/material.dart';
import 'package:sikh_prayer/first_class.dart';
import 'package:sikh_prayer/main.dart';

class Button extends StatelessWidget {
  late int index;
  late bool a;
  List language = ["Spanish", "English", "French", "Romanian", "Gadani"];
  Button(this.index, this.a);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Save",
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Material(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              flex: 1,
              child: SizedBox(

              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "Please Select your Language",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),

            Expanded(
              flex:6,
              child: ListView.builder(
                  itemCount: language.length,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                    //  style: ButtonStyle(maximumSize:MaterialStateProperty.all<Size>(23.000000) ),
                        onPressed: () {
                          int b = index;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FirstClass(index, a, b),
                            ),
                          );
                        },
                        child: Text(
                          language[index],
                          style: TextStyle(fontSize: 22),
                        ));
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
