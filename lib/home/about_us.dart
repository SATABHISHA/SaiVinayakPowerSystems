


import 'package:flutter/material.dart';
import 'package:sai_vinayak_power_systems/home/constants.dart';

class AboutUs extends StatefulWidget {
  // const AboutUs({super.key});
 AboutUs();
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            side: BorderSide(width: 2, color: Color.fromRGBO(105, 158, 125, 1.0))
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: contentBox(context)

    );
  }
  contentBox(context){

    return Container(
      width: double.infinity - 20,
      height: double.infinity - 20,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              // Color.fromRGBO(2, 72, 254, 1.0),
              /*Colors.blue,
                  Colors.yellow,
                  Colors.redAccent,*/
              Color.fromRGBO(23, 23, 23, 0.5),
              Color.fromRGBO(215, 239, 172, 0.5),
              // Colors.white38,
              // Colors.black54,
              // Colors.black12,
              Colors.black,

            ],
          )
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //---About us, code starts
              Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                child: Container(
                  width: double.infinity - 30,
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
                        Center(child: Text('Details of our Company Founders', style: TextStyle(color: Color.fromRGBO(23, 23, 23, 1.0), fontSize: 25, fontWeight: FontWeight.w700))),
                        SizedBox(height: 10,),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text('1. Proprietor of the Company: Mrs. Sutapa Roy',
                                style: TextStyle(color: Color.fromRGBO(
                                    23, 23, 23, 1.0), fontSize: 19, fontWeight: FontWeight.w700)),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              fit: FlexFit.loose,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                child: Text('Educational Background: ',
                                    style: TextStyle(color: Color.fromRGBO(
                                        23, 23, 23, 1.0), fontSize: 19, fontWeight: FontWeight.w700)),
                              ),
                            ),

                            Flexible(
                              fit: FlexFit.loose,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text('Masters in Political Science and Masters in Music',
                                    style: TextStyle(color: Color.fromRGBO(
                                        23, 23, 23, 1.0), fontSize: 19, fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ],
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text('Work Experience:',
                                style: TextStyle(color: Color.fromRGBO(
                                    23, 23, 23, 1.0), fontSize: 19, fontWeight: FontWeight.w700)),
                          ),
                        ),

                        Flexible(
                          fit: FlexFit.loose,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(AboutUsConstants.work_exp_txt_sutapa,
                                style: TextStyle(color: Color.fromRGBO(
                                    23, 23, 23, 1.0), fontSize: 19, fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //---About us, code ends
            ],
          )
        ],
      ),
    );
  }
}
