import 'package:flutter/material.dart';

void main() {
  runApp(ScrumPoker());
}

class ScrumPoker extends StatelessWidget {
  // This widget is the root of your application.
  const ScrumPoker({Key? key}) : super(key: key);

  static const String _title = 'Scrum Poker';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrum Poker',
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
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: <Widget>[
          Center(
              child: Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              SizedBox(
                width: 200,
                height: 340,
                child: Text('Card 1'),
              )
            ]),
          )),
          Center(
              child: Card(
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(4),
                //image: const DecorationImage(
                //image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                //fit: BoxFit.cover,
              ),
              child: Text('Card 2'),
            ),
          ]))),
          Center(
            child: Text('Card 3'),
          ),
        ]);
  }
}
