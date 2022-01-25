import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

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
        FlipCard(
          fill: Fill
              .fillBack, // Fill the back side of the card to make in the same size as the front.
          direction: FlipDirection.HORIZONTAL, // default
          front: Center(
            child: Container(
              width: 360,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card0.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 360,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card0HardMode.png'),
                ),
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
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/card3.png'),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/card5.png'),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/card8.png'),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/card13.png'),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/card20.png'),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/card40.png'),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/card100.png'),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cardInfinity.png'),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cardUnknown.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
