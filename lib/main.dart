import 'package:flutter/cupertino.dart';
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
        // Do the swipe animations ('physics') go here?
        controller: controller,
        children: <Widget>[
          // The first card
          // Use this card to learn how to use an alertDialog or popup

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

          // The second card
          // Use this card to learn how to do a card flip animation

          GestureDetector(
              onLongPress: () {
                _showDialog(context)
              },
              child: Card(
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 105, vertical: 210),
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(18),

                    // image: const DecorationImage(
                    // image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    // fit: BoxFit.cover,
                  ),
                  child: Text('Card 2'),
                ),
              ]))),

          // The third card
          // Use this card to learn how to insert an image in the shape you want
          
          Center(
            child: Text('Card 3'),
          ),
        ]);
  }
}
