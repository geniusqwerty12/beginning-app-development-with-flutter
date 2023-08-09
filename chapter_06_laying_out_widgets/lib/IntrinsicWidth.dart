import 'package:flutter/material.dart';

class IntrinsicWidthSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                border: Border.all(color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ElevatedButton(
                  child: Text("A"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("B"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("This is a super-long button"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("D"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                border: Border.all(color: Colors.black)),
            child: IntrinsicWidth(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                    child: Text("A"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text("B"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text("This is a long button"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text("D"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border.all(color: Colors.black)),
            child: IntrinsicWidth(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                    child: Text("A"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text("B"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text("This is a super-long button"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text("D"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
