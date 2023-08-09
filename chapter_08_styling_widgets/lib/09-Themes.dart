import 'package:flutter/material.dart';

class Themes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        child: ListView(
          children: <Widget>[
            Text('bodyMedium', style: Theme.of(context).textTheme.bodySmall),
            Text('bodyMedium', style: Theme.of(context).textTheme.bodyMedium),
            Text('bodyLarge', style: Theme.of(context).textTheme.bodyLarge),
            Text('displaySmall', style: Theme.of(context).textTheme.displaySmall),
            Text('displaySmall', style: Theme.of(context).textTheme.displayMedium),
            Text('displaySmall', style: Theme.of(context).textTheme.displayLarge),
            Text('labelSmall', style: Theme.of(context).textTheme.labelSmall),
            Text('labelMedium', style: Theme.of(context).textTheme.labelMedium),
            Text('labelLarge', style: Theme.of(context).textTheme.labelLarge),
            Text('titleSmall', style: Theme.of(context).textTheme.titleSmall),
            Text('titleMedium', style: Theme.of(context).textTheme.titleMedium),
            Text('titleLarge', style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}
