import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:sai_vinayak_power_systems/config/BezierClipper.dart';
import 'package:sai_vinayak_power_systems/home/client_list_tile.dart';
import 'package:sai_vinayak_power_systems/home/machinery_list_tile.dart';
import '../widgets/widget_home/CustomCarouselSlider.dart';

class Home extends StatefulWidget {
  // const Home({Key? key}) : super(key: key);
  static String id = 'Home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<Widget> listMachineries = [];
    return Material(
      child: Scaffold(
        // backgroundColor: Color.fromRGBO(204, 234, 243, 0.9686274509803922),
        // backgroundColor: Color.fromRGBO(134, 134, 134, 0.9686274509803922),
        body: Container(
        decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  // Color.fromRGBO(2, 72, 254, 1.0),
                  /*Colors.blue,
                  Colors.yellow,
                  Colors.redAccent,*/
                  Colors.black,
                  Colors.black12,
                  // Colors.white38,
                  // Colors.black54,
                  // Colors.black12,
                  Colors.black,

                ],
              )
        ),
          // color: Color.fromRGBO(2, 2, 2, 0.3),
          child: ListView(
            shrinkWrap: true,
            // scrollDirection: Axis.vertical,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  ClipPath(
                    clipper: BezierClipper(),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      color: Colors.black,
                      /*decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              // Color.fromRGBO(2, 72, 254, 1.0),
                              Colors.yellow,
                              Colors.white,
                              Colors.yellowAccent,


                            ],
                          )
                      ),*/
                      child: Stack(
                        children: [
                          /*Image.asset('images/landingpageimage.jpg',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.fill),*/

                          //---Contacts, code starts
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Row(
                              children: [
                                Image.asset('images/phone.png',
                                    width: 20,
                                    height: 20,),
                                SizedBox(width: 10,),
                                Text('9903180809 | 9903990807 | 9903990809', style: TextStyle(color: Colors.white, fontSize: 13),)
                              ],
                            ),
                          ),
                          //---Contacts, code ends

                          //---Email, code starts
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('images/email.png',
                                    width: 20,
                                    height: 20,),
                                  SizedBox(width: 10,),
                                  Text('saivinayakps@gmail.com', style: TextStyle(color: Colors.white, fontSize: 13),)
                                ],
                              ),
                            ),
                          ),
                          //---Email, code ends

                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                              child: Column(
                                children: [
                                  DefaultTextStyle(
                                      style: TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.white,
                                      ),
                                      child: AnimatedTextKit(
                                        totalRepeatCount: 1,
                                        animatedTexts: [
                                      TyperAnimatedText('Sai Vinayak Power Systems')
                                        ],
                                      )),
                                  SizedBox(width: 10,),
                                  Text('2/2 L.N Motilal Road, Kolkata 700061', style: TextStyle(color: Colors.white, fontSize: 13),)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // CustomImageSlider(),
                  SizedBox(height: 30,),
                  //---who we are, code starts
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      width: double.infinity,
                      // height: 250,
                      // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(217, 215, 215, 1.0),
                            blurRadius: 15.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 0.0),
                          )
                        ],),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(8, 15, 8, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Center(child: Text('Who We Are', style: TextStyle(color: Color.fromRGBO(23, 23, 23, 1.0), fontSize: 25, fontWeight: FontWeight.w700))),
                            SizedBox(height: 10,),
                            Flexible(
                              fit: FlexFit.loose,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text('      We have leased three factories in Kolkata with one 4000 sq. ft. covered area Fabrication shop and others are 2000 sq. ft. (each)covered area Assembly shop with assorted machineries for panels.\nWe are associated with M/s Automation Solutions and Services – an ISO 9001 : 2015 certified company to provide the additional services of Automation / Commissioning assistance at Field / Retrofitting ( Modification of Feeders of Panels ).',
                                    style: TextStyle(color: Color.fromRGBO(23, 23, 23, 1.0), fontSize: 19, fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //---who we are, code ends
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                      child: InkWell(onTap: () {
                        print('Clicked');
                      },child: Text('See more...',style: TextStyle(color: Color.fromRGBO(
                          248, 248, 248, 1.0), fontSize: 22, fontWeight: FontWeight.w500))),
                    ),
                  ),
                  SizedBox(height: 40,),
                  //---why us, code starts
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      width: double.infinity,
                      // height: 250,
                      // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(217, 215, 215, 1.0),
                            blurRadius: 15.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 0.0),
                          )
                        ],),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(8, 15, 8, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Center(child: Text('Why Us', style: TextStyle(color: Color.fromRGBO(23, 23, 23, 1.0), fontSize: 25, fontWeight: FontWeight.w700))),
                            SizedBox(height: 10,),
                            Flexible(
                              fit: FlexFit.loose,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text('      We have highly professional skilled Autocad trained team for Drawing and Designing.\nFollowing are the key benifits of choosing us:\n1. Quality\n2. On Time Delivery\n3. Post-delivery support\n4. Documentation on Delivery (Provides the Original Bills and warranty papers for all the Hardware used in the Panel)',
                                    style: TextStyle(color: Color.fromRGBO(
                                        23, 23, 23, 1.0), fontSize: 19, fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //---why us, code ends

                  SizedBox(height: 30,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      //---product list, code starts
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
                      //---product list, code ends


                      //---machineries list in listView, code starts
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Container(
                          width: 400,
                          height: 300,
                          // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
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
                            padding: EdgeInsets.fromLTRB(8, 15, 8, 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('List of Machineries', style: TextStyle(color: Color.fromRGBO(23, 23, 23, 1.0), fontSize: 16, fontWeight: FontWeight.w700)),
                                SizedBox(height: 10,),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Column(
                                      children: [
                                        MachineryListTile(row_color: Colors.blue, txt_color: Colors.black, txt_font_size: 17, txt_slno: 'Sl. No.', txt_desc: 'Description', txt_qty: 'Qty', weight: FontWeight.bold,),
                                        Expanded(
                                          child: ListView(
                                            shrinkWrap: true,
                                            children: [
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '1', txt_desc: 'Hydraulic shearing machine', txt_qty: '1 No.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '2', txt_desc: 'Auto Hydraulic bending machine', txt_qty: '1 No.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '3', txt_desc: 'Hydraulic press machine', txt_qty: '1 No.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '4', txt_desc: 'Piller drill', txt_qty: '4 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '5', txt_desc: 'Hand Drill Machine', txt_qty: '10 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '6', txt_desc: 'Ball Press', txt_qty: '3 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '7', txt_desc: 'Welding machine', txt_qty: '5 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '8', txt_desc: 'Hand Grinding Machine', txt_qty: '10 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '9', txt_desc: 'Chak-saw machine', txt_qty: '4 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '10', txt_desc: 'Sander Machine', txt_qty: '3 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '11', txt_desc: 'Digital Paint Coat Gauge Elcometer', txt_qty: '1 No.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '12', txt_desc: 'Manual Hydraulic Busbar Bending Machine', txt_qty: '2 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '13', txt_desc: 'Hydraulic Busbar Bending Machine', txt_qty: '1 No.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '14', txt_desc: 'Hydraulic Busbar Cutting &amp; Punching Machine', txt_qty: '1 No.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '15', txt_desc: 'Wire Crimping Machine', txt_qty: '10 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '16', txt_desc: 'Power Wire Cutter', txt_qty: '10 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '17', txt_desc: 'Ferrul Printing Machine', txt_qty: '3 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '18', txt_desc: 'Seconday Current Injection Kit', txt_qty: '1 No.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '19', txt_desc: 'Continuity Tester', txt_qty: '10 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '20', txt_desc: 'Tong Tester', txt_qty: '2 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '21', txt_desc: '1000 V megger', txt_qty: '2 Nos.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '22', txt_desc: '5 KV HV Testing Machine', txt_qty: '1 No.', weight: FontWeight.normal,),
                                              MachineryListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '23', txt_desc: 'Miscellaneous Tools', txt_qty: '1 Lot', weight: FontWeight.normal,),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      //---machineries list in listView, code ends

                      //---client list in listView, code starts
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
                        child: Container(
                          width: 300,
                          height: 300,
                          // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
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
                            padding: EdgeInsets.fromLTRB(8, 15, 8, 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Our Clients', style: TextStyle(color: Color.fromRGBO(23, 23, 23, 1.0), fontSize: 16, fontWeight: FontWeight.w700)),
                                SizedBox(height: 10,),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Column(
                                      children: [
                                        ClientListTile(row_color: Colors.blue, txt_color: Colors.black, txt_font_size: 17, txt_slno: 'Sl. No.', txt_client_name: 'Client Name', weight: FontWeight.bold,),
                                        Expanded(
                                          child: ListView(
                                            shrinkWrap: true,
                                            children: [
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '1', txt_client_name: 'HMB Ispat Pvt. Ltd.', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '2', txt_client_name: 'Mani Square Hospitality Pvt. Ltd.', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '3', txt_client_name: 'Magus Bengal Estates LLP', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '4', txt_client_name: 'Siom Realty Pvt. Ltd.', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '5', txt_client_name: 'BNSS Engineering Pvt. Ltd.', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '6', txt_client_name: 'SS Engineering', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '7', txt_client_name: 'ITC Limited. Unit - Tribeni', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '8', txt_client_name: 'Amiya Steel Pvt. Ltd.', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '9', txt_client_name: 'Bengal NRI Complex Limited', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '10', txt_client_name: 'Grap Realty Private Limited', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '11', txt_client_name: 'Amity University', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '12', txt_client_name: 'Haldiram Bhujiwala Ltd.', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '13', txt_client_name: 'Narayan Hospital', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '14', txt_client_name: 'Overon Infrustructure', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '15', txt_client_name: 'Shyam Group', weight: FontWeight.normal,),
                                              ClientListTile(row_color: Colors.white, txt_color: Colors.black, txt_font_size: 14, txt_slno: '16', txt_client_name: 'Tenova India Pvt. Ltd.', weight: FontWeight.normal,),

                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                      //---client list in listView, code ends
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
      ),
    );
  }
}


