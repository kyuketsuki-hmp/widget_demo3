//Stateful

import 'package:flutter/material.dart';
import 'package:wideget_demo3/Screens/cart.dart';

class Coffee {
  final String name;

  Coffee({this.name});
}

class HomePage extends StatefulWidget {
  //No change class,
  //createState -> obj-> state - use state to reflect the changes
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Changes are performing here , another object
  //reload the object
  List<Coffee> _coffeeTypes = List<Coffee>();
  List<Coffee> _coffeeCartList = List<Coffee>();

  void _populateCoffees() {
    var list = <Coffee>[
      Coffee(name: 'espresso'),
      Coffee(name: 'frappe'),
      Coffee(name: 'cold'),
      Coffee(name: 'hot')
    ];
    setState(() {
      _coffeeTypes = list;
    });
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _populateCoffees();
    print("Initialize......");
    //do for one time initialization,setup do here
  }

  @override
  Widget build(BuildContext context) {
    print("Building.....");
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown[300],
          title: Text("Choose Your Coffee"),
        ),
        body: Container(
            color: Colors.brown[200],
            width: screenWidth,
            height: screenHeight,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: FlatButton(
                              onPressed: () {
                                var route = MaterialPageRoute(
                                  builder: (context) {
                                    return Cart();
                                  },
                                );
                                Navigator.of(context).pushReplacement(route);
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "assets/espresso.jpg",
                                  fit: BoxFit.fitHeight,
                                  width: screenWidth,
                                  height: 340,
                                ),
                              )),
                          flex: 1,
                        ),
                        Expanded(
                          child: FlatButton(
                              onPressed: () {
                                var route = MaterialPageRoute(
                                  builder: (context) {
                                    return Cart();
                                  },
                                );
                                Navigator.of(context).pushReplacement(route);
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "assets/frappe.jpg",
                                  fit: BoxFit.fitHeight,
                                  width: screenWidth,
                                  height: 340,
                                ),
                              )),
                          flex: 1,
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: FlatButton(
                              onPressed: () {
                                var route = MaterialPageRoute(
                                  builder: (context) {
                                    return Cart();
                                  },
                                );
                                Navigator.of(context).pushReplacement(route);
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "assets/cold.jpg",
                                  fit: BoxFit.fitHeight,
                                  width: screenWidth,
                                  height: 340,
                                ),
                              )),
                          flex: 1,
                        ),
                        Expanded(
                          child: FlatButton(
                              onPressed: () {
                                var route = MaterialPageRoute(
                                  builder: (context) {
                                    return Cart();
                                  },
                                );
                                Navigator.of(context).pushReplacement(route);
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "assets/hot.jpg",
                                  fit: BoxFit.fitHeight,
                                  width: screenWidth,
                                  height: 340,
                                ),
                              )),
                          flex: 1,
                        ),
                      ],
                    ),
                    flex: 1,
                  )
                ],
              ),
            )));
  }
}
