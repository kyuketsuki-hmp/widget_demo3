import 'package:flutter/material.dart';
import 'package:wideget_demo3/Screens/homepage.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<Map<String, dynamic>> data = [
    {
      "title": "As Anne Spencer says... ",
      "desc":
          " `Good communication is as stimulating as black coffee, and just as hard. ` ",
      "background": Colors.brown[200],
      "image": "c1.jpeg",
    },
    {
      "title": "Dave Barry says...",
      "desc":
          " ` Eating rice cakes is like chewing on a foam coffee cup, pnly less filling. ` ",
      "background": Colors.brown[200],
      "image": "c2.jpg",
    },
    {
      "title": "Thomas Jefferson says... ",
      "desc": " ` Coffee, the favorite drink of the civilized world. ` ",
      "background": Colors.brown[200],
      "image": "c3.jpg",
    },
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    var page = data[index];
    var background = page["background"];
    var image = page["image"] as String;
    return Scaffold(
      backgroundColor: background,
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Image.asset("assets/$image"),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            page["title"],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(page["desc"])
                        ]))),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      if (index < (data.length - 1)) {
                        index++;
                        setState(() {});
                      } else {
                        var route = MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        );

                        Navigator.of(context).pushReplacement(route);
                      }
                    },
                    child: Text("Next")))
          ],
        ),
      ),
    );
  }
}
