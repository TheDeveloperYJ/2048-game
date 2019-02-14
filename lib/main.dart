import 'package:flutter/material.dart';
import './model/tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2048',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2048 '),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'YOUR SCORE',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    '7890',
                    style: TextStyle(fontSize: 24.0),
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: Colors.brown[100],
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Column(
                    children: <Widget>[
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TileLayout(2, Colors.orange),
                          TileLayout(4, Colors.deepOrange),
                          // TileLayout(2, Colors.orange),
                          // TileLayout(2, Colors.orange),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TileLayout(2, Colors.orange),
                          TileLayout(2048, Colors.orange),
                          TileLayout(2, Colors.orange),
                          TileLayout(2, Colors.orange),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // TileLayout(2, Colors.orange),
                          TileLayout(2, Colors.orange),
                          TileLayout(2, Colors.orange),
                          TileLayout(2, Colors.orange),
                        ],
                      ),
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TileLayout(2, Colors.orange),
                          TileLayout(2, Colors.orange),
                          TileLayout(2, Colors.orange),
                          TileLayout(2, Colors.orange),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class TileLayout extends StatelessWidget {
  final int value;
  final Color color;
  TileLayout(this.value, this.color);
  Widget build(context) {
    return GestureDetector(
      onHorizontalDragStart: (DragStartDetails details) {
        print(details);
      },
      onPanUpdate: (DragUpdateDetails details) {
        //  print(details);
      },
      onPanEnd: (DragEndDetails details) {
        //print(details);
      },
      child: Container(
        margin: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
            color: color, border: Border.all(color: Colors.black)),
        width: 90.0,
        height: 90.0,
        child: Center(
            child: Text(
          value.toString(),
          style: TextStyle(fontSize: 35.0, color: Colors.white),
        )),
      ),
    );
  }
}
