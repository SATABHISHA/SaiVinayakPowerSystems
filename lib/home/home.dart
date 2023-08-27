import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:sai_vinayak_power_systems/home/machinery_list_tile.dart';
import '../widgets/widget_home/CustomCarouselSlider.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);
  static String id = 'Home';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(204, 234, 243, 0.9686274509803922),
        body: ListView(
          shrinkWrap: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  child: Stack(
                    children: [
                      Image.asset('images/landingpageimage.jpg',
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill),
                      /*DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.white,
                          ),
                          child: Center(
                              child: AnimatedTextKit(
                            totalRepeatCount: 1,
                            animatedTexts: [
                              TyperAnimatedText('Sai Vinayak Power Systems')
                            ],
                          ))),*/
                    ],
                  ),
                ),
                // CustomImageSlider(),
                SizedBox(height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                      child: Container(
                        width: 400,
                        // height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(217, 215, 215, 1.0),
                              blurRadius: 15.0,
                              spreadRadius: 2.0,
                              offset: Offset(0.0, 0.0),
                            )
                          ],),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Our Products', style: TextStyle(color: Color.fromRGBO(23, 23, 23, 1.0), fontSize: 16, fontWeight: FontWeight.w700)),
                              CustomImageSlider(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('List of Machineries', style: TextStyle(color: Color.fromRGBO(23, 23, 23, 1.0), fontSize: 16, fontWeight: FontWeight.w700)),
                            ListView(
                              shrinkWrap: true,
                              children: [
                                MachineryListTile(row_color: Colors.blue, txt_color: Colors.black, txt_font_size: 17, txt_slno: 'Sl No', txt_desc: 'Description', txt_qty: 'Qty'),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),

                /*Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container()
                  ],
                )*/
              ],
            )
          ],
        ),
      ),
    );
  }
}


