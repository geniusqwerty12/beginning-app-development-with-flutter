import 'package:flutter/material.dart';
import 'dart:convert';
import 'LayoutDrawer.dart';

class SnackBarAlert extends StatelessWidget {
  final List<dynamic> people;
  SnackBarAlert(this.people);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 300.0,
      children: people
          .map<Widget>((dynamic person) => GestureDetector(
              child: PersonCard(person),
              onTap: () {
                String msg = '${person['name']['first']} deleted.';
                final SnackBar sb = SnackBar(
                  content: Text(msg),
                  duration: Duration(seconds: 55),
                  action: SnackBarAction(
                    textColor: Colors.white,
                    label: "UNDO",
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(sb);
              }))
          .toList(),
    );
  }
}

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  List<dynamic> _peopleList = <dynamic>[];

  void _getPeople() async {
    String peopleString = await DefaultAssetBundle.of(context)
        .loadString('assets/data/people.json');
    dynamic jsonData = json.decode(peopleString);
    if (mounted)
      setState(() {
        _peopleList = jsonData['results'];
      });
  }

  @override
  void initState() {
    super.initState();
    _getPeople();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LayoutAppBar().toPreferredSizeWidget(context),
      drawer: LayoutDrawer(),
      body: SnackBarAlert(_peopleList),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  String propercase(String input) {
    return input[0].toUpperCase() + input.substring(1).toLowerCase();
  }
}

class PersonCard extends StatelessWidget {
  final dynamic person;
  PersonCard(this.person);
  @override
  Widget build(BuildContext context) {
    String fullName =
        "${propercase(person['name']['first'])} ${propercase(person['name']['last'])}";
    String cell = person['cell'];
    String email = person['email'];
    return Container(
      //decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.all(Radius.circular(5.0))),
      margin: const EdgeInsets.only(top: 4.0),
      child: Stack(
        children: <Widget>[
          Image.network(
            person['picture']['large'],
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -2.0),
                    end: Alignment(0.0, 1.0),
                    colors: <Color>[
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(50, 0, 0, 0)
                    ],
                  ),
                ),
                child: Text(fullName,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -2.0),
                    end: Alignment(0.0, 1.0),
                    colors: <Color>[
                      Color.fromARGB(50, 0, 0, 0),
                      Color.fromARGB(200, 0, 0, 0)
                    ],
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Text('Email: $email',
                        style: TextStyle(color: Colors.white)),
                    Text('Cell: $cell', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String propercase(String input) {
    return input[0].toUpperCase() + input.substring(1).toLowerCase();
  }
}
