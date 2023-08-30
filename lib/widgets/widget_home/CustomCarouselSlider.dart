



import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomImageCarouselSlider extends StatefulWidget {
  const CustomImageCarouselSlider({
    super.key,
  });

  @override
  State<CustomImageCarouselSlider> createState() => _CustomImageCarouselSliderState();
}

class _CustomImageCarouselSliderState extends State<CustomImageCarouselSlider> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('images/a.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('images/b.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('images/c.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('images/d.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('images/e.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('images/f.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('images/g.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('images/h.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('images/i.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('images/j.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('images/k.png'),
                fit: BoxFit.contain,
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
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            initialPage: 0
        )
    );
  }
}