import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(ScrumPoker());
}

class ScrumPoker extends StatelessWidget {
  // This widget is the root of your application.
  const ScrumPoker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrum Poker',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: Container(
          // Background Image
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/cardBackground.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: new TeReoCardWidget(),
        ),
      ),
    );
  }
}

class TeReoCardWidget extends StatelessWidget {
  const TeReoCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.8);
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
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card0.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card0_B.png'),
                ),
              ),
            ),
          ),
        ),
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cardHalf.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cardHalf_B.png'),
                ),
              ),
            ),
          ),
        ),
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card1.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card1_B.png'),
                ),
              ),
            ),
          ),
        ),
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card2.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card2_B.png'),
                ),
              ),
            ),
          ),
        ),
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card3.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card3_B.png'),
                ),
              ),
            ),
          ),
        ),
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card5.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card5_B.png'),
                ),
              ),
            ),
          ),
        ),
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card8.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card8_B.png'),
                ),
              ),
            ),
          ),
        ),
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card13.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card13_B.png'),
                ),
              ),
            ),
          ),
        ),
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card20.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card20_B.png'),
                ),
              ),
            ),
          ),
        ),
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card40.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card40_B.png'),
                ),
              ),
            ),
          ),
        ),
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card100.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card100_B.png'),
                ),
              ),
            ),
          ),
        ),
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cardInfinity.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cardInfinity_B.png'),
                ),
              ),
            ),
          ),
        ),
        FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          front: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cardUnknown.png'),
                ),
              ),
            ),
          ),
          back: Center(
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cardUnknown_B.png'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
