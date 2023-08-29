


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
          'images/a.jpg',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/b.jpg',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/c.jpg',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/d.jpg',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/e.jpg',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/f.jpg',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/g.jpg',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/h.jpg',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/i.jpg',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/j.jpg',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'images/k.jpg',
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
