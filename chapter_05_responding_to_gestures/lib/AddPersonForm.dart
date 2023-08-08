import 'package:flutter/material.dart';

class AddPersonForm extends StatefulWidget {
  final Function? addPerson;
  AddPersonForm({this.addPerson});
  @override
  _AddPersonFormState createState() => _AddPersonFormState();
}

class _AddPersonFormState extends State<AddPersonForm> {
  var _person = Map<String, String>();

  GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Form(
        key: _key,
        child: Container(
          child: ListView(
            children: <Widget>[
              Text("Add a new person",
                  style: Theme.of(context).textTheme.headlineMedium),
              _buildFirstNameText(),
              _buildLastNameText(),
              ElevatedButton(
                onPressed: () => _savePerson(context),
                child: Text("Save"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _savePerson(BuildContext context) {
    if (_key.currentState!.validate()) {
      _key.currentState!.save();
      print("Save ${_person['first']} here");
      widget.addPerson!(_person);
      Navigator.pop(context, true);
    }
  }

  Widget _buildFirstNameText() {
    return TextFormField(
      onSaved: (String? val) {
        _person['first'] = val!;
      },
      decoration: InputDecoration(labelText: "First name"),
      validator: (String? val) {
        if (val!.isEmpty) return "We need a first name, please";
      },
    );
  }

  Widget _buildLastNameText() {
    return TextFormField(
      onSaved: (String? val) {
        _person['last'] = val!;
      },
      decoration: InputDecoration(labelText: "Last name"),
      validator: (String? val) {
        if (val!.isEmpty) return "We need a last name, please";
      },
    );
  }
}
