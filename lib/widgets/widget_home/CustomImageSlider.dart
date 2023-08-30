


import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class CustomImageSlider extends StatefulWidget {
  const CustomImageSlider({
    super.key,
  });

  @override
  State<CustomImageSlider> createState() => _CustomImageSliderState();
}

class _CustomImageSliderState extends State<CustomImageSlider> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      /// Width of the [ImageSlideshow].
      // width: 500,

      /// Height of the [ImageSlideshow].
      height: 300,

      /// The page to show when first creating the [ImageSlideshow].
      initialPage: 0,

      /// The color to paint the indicator.
      indicatorColor: Colors.blue,

      /// The color to paint behind th indicator.
      indicatorBackgroundColor: Colors.grey,

      /// The widgets to display in the [ImageSlideshow].
      /// Add the sample image file into the images folder
      children: [
        Image.asset(
          'images/a.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/b.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/c.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/d.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/e.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/f.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/g.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/h.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/i.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/j.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/k.png',
          fit: BoxFit.contain,
        ),
      ],

      /// Called whenever the page in the center of the viewport changes.
      onPageChanged: (value) {
        print('Page changed: $value');
      },

      /// Auto scroll interval.
      /// Do not auto scroll with null or 0.
      autoPlayInterval: 3000,

      /// Loops back to first slide.
      isLoop: true,
    );
  }
}
