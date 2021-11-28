import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ScrumPoker());
}

class ScrumPoker extends StatelessWidget {
  // This widget is the root of your application.
  const ScrumPoker({Key? key}) : super(key: key);

  //static const String _title = 'Scrum Poker';

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
        // appBar: AppBar(title: const Text(_title)),
        body: Container(
          // Background Image
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/cardBackground.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: new TeReoCardWidget(),
          //crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
      ),
    );
  }
}

class TeReoCardWidget extends StatelessWidget {
  const TeReoCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/card0.png'),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cardHalf.png'),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/card1.png'),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/card2.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
