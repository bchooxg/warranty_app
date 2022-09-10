import 'package:flutter/material.dart';
import 'Home.dart';
import 'Form.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() {
  runApp(MaterialApp(
    title: "Named Routes",
    initialRoute: '/',
    routes: {
      '/': ((context) => MyHomePage(
            title: 'test',
          )),
      '/form': (context) => FormPage()
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warranty App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Warranty App Main Page'),
    );
  }
}
