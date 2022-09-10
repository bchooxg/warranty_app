import 'package:flutter/material.dart';
import 'Card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final List<Widget> _cardList = [
    itemCard(title: 'PS5'),
    itemCard(title: 'Xbox')
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _addNewItem() {
    print('button tapped');
    print(_cardList.length);

    setState(() {
      _cardList.add(itemCard(title: 'Test Cardd'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/form');
              },
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: _cardList.length,
        itemBuilder: (BuildContext bc, int index) {
          return _cardList[index];
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewItem,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}


      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Expanded(
      //           child: ListView(
      //         padding: EdgeInsets.all(8),
      //         children: _cardList,
      //       )),
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //     ],
      //   ),
      // ),
