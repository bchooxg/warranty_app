import 'package:flutter/material.dart';

class itemCard extends StatelessWidget {
  String title;

  itemCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(title),
      subtitle: Text('10-Sep-2022'),
      trailing: Text('761 Days'),
      onTap: () {
        print('hello from card');
      },
    ));
  }
}
