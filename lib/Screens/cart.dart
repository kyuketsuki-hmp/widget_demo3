import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Checking Out Your Order"),
            backgroundColor: Colors.brown[200],
          ),
          body: Center(
            child: RadioGroup(),
          )),
    );
  }
}

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = ' Ristretto ';
  // Group Value for Radio Button.
  int id = 1;
  int cupCount = 1;
  int cost = 3200;
  int total = 0;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = ' Ristretto ';
                  id = 1;
                });
              },
            ),
            Text(
              ' Ristretto ',
              style: new TextStyle(fontSize: 12.0),
            ),
            Radio(
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = ' Macchiato';
                  id = 2;
                });
              },
            ),
            Text(
              ' Macchiato ',
              style: new TextStyle(
                fontSize: 12.0,
              ),
            ),
            Radio(
              value: 3,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = ' Cappuccino ';
                  id = 3;
                });
              },
            ),
            Text(
              'Cappuccino',
              style: new TextStyle(fontSize: 12.0),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 4,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = ' Caramel ';
                  id = 4;
                });
              },
            ),
            Text(
              ' Caramel ',
              style: new TextStyle(fontSize: 12.0),
            ),
            Radio(
              value: 5,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = ' Hazelnut ';
                  id = 5;
                });
              },
            ),
            Text(
              ' Hazelnut ',
              style: new TextStyle(
                fontSize: 12.0,
              ),
            ),
            Radio(
              value: 6,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = ' Affogato ';
                  id = 6;
                });
              },
            ),
            Text(
              'Affogato',
              style: new TextStyle(fontSize: 12.0),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("-"),
              color: Colors.brown[100],
              //true ? processA : processB
              onPressed: cupCount > 0
                  ? () {
                      if (cupCount > 0)
                        setState(() {
                          cupCount--;
                          total = cost * cupCount;
                        });
                    }
                  : null,
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              color: Colors.brown[100],
              child: Text("+"),
              onPressed: cupCount < 20
                  ? () {
                      setState(() {
                        cupCount++;
                        total = cost * cupCount;
                      });
                    }
                  : null,
            )
          ],
        ),
        Padding(
            padding: EdgeInsets.all(12.0),
            child: Text('You have Chosen : ' + '$radioButtonItem',
                style: TextStyle(fontSize: 17))),
        Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(' No of Order : ' + '$cupCount',
                style: TextStyle(fontSize: 17))),
        Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(' Total : ' + '$total' + ' MMK',
                style: TextStyle(fontSize: 35))),
      ],
    );
  }
}
