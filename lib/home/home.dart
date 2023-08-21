import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);
  static String id = 'Home';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,

          children: [
            Column(
              children: [
                /*Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  child: Stack(
                    children: [
                      Image.asset('images/landingpageimage.jpg', width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
                      DefaultTextStyle(style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                      ),child: Center(child: AnimatedTextKit(totalRepeatCount: 1,animatedTexts: [TyperAnimatedText('Sai Vinayak Power Systems')],))),
                    ],
                  ),
                ),*/

                CustomImageSlider(),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(

                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomImageSlider extends StatelessWidget {
  const CustomImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/a.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/b.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/c.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/d.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/e.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/f.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/g.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/h.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/i.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/j.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/k.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
        options: CarouselOptions(
          height: 300,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        )
    );
  }
}
