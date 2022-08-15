import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);
  static String id = 'Home';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              child: Stack(
                children: [
                  Image.asset('images/landingpageimage.jpg', width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
                  DefaultTextStyle(style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),child: Center(child: AnimatedTextKit(totalRepeatCount: 1,animatedTexts: [TyperAnimatedText('Sai Vinayak Power Systems')],)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
