import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class DrawerNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Navigation'),
      ),
      body: Center(
        child: Container(
            child: Text(
          'Drawer Navigation',
          style: Theme.of(context).textTheme.displayLarge,
        )),
      ),
      drawer: MyDrawer(),
    );
  }
}
