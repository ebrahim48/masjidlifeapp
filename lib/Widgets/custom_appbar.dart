import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProductsWidget.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428,
      height: 50,
      margin: EdgeInsets.only(top: 44),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xFFCCE9DC),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/masjid.png",
            height: 32,
            width: 32,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(1, 10, 10, 10),
            child: Text(
              'MASJID.LIFE',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color(0xFF008F51),
              ),
            ),
          ),
          SizedBox(width: 5),
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(4),
            child: Icon(
              Icons.search,
              color: Color(0xFF008F51),
              size: 24,
            ),
          ),
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(4),
            child: Icon(
              Icons.menu,
              color: Color(0xFF008F51),
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
class CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 337,
            height: 30,
            margin: EdgeInsets.only(top: 12, left: 16),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF979797),
                width: 0.5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                '♦ 100% Interest Free Loans for the Poor and Disadvantaged.',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 1.33,
                  letterSpacing: 0,
                  color: Color(0xFF008F51),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(width: 1,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                width: 338,
                decoration: BoxDecoration(
                  color: Color(0xFFCCE9DC),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFCCE9DC).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Image.asset(
                          "assets/images/screen.png",
                          height: 120,
                          width: 50,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(vertical: 30),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Text("About",
                    //         style: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 14,
                    //           fontWeight: FontWeight.w500,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    SizedBox(width: 1),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Image.asset(
                          "assets/images/screen3.png",
                          height: 120,
                          width: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 340,
            height: 100,
            margin: EdgeInsets.only(top: 20, left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFCCE9DC),
                  Color(0xFFCCE9DC),
                ],
              ),
              border: Border.all(
                color: Color(0xFFB8B8B8),
                width: 0.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x40000000),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text("Our Products/ Services",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ProductWidget(),
        ],
      ),
    );
  }
}










