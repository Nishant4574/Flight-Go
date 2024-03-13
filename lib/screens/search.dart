import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgtes/Icon_text.dart';
import 'package:flutter_application_1/Widgtes/viewall_widgets.dart';
import 'package:flutter_application_1/utils/app_layout.dart';
import 'package:flutter_application_1/utils/app_styles.dart';
import 'package:get/get.dart';

class searchscreen extends StatelessWidget {
  const searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "What are\nyou looking for..?",
            style: Styles.headlineStyle1.copyWith(fontSize: 38),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(2.8),
            child: Row(
              children: [
                Container(
                  width: 168,
                  padding: EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Text("Airline Tickets"),
                  ),
                ),
//Airline tickets
                Container(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(20)),
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Text("Hotels"),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: const Color(0xFFF4F6FD)),
          ),
          SizedBox(
            height: 28,
          ),
          AppIconText(icon: Icons.flight_takeoff, text: "Departure"),
          SizedBox(
            height: 15,
          ),
          AppIconText(icon: Icons.flight_land, text: "Arival"),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
                color: Colors.blue.shade600,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Find Tickets",
                  style: Styles.textStyle
                      .copyWith(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 42,
          ),
          Appdoubletext(bigtext: "Upcoming flights", smalltext: "View all"),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 330,
                width: 175,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(
                              image: AssetImage(
                            "images/8.jpg",
                          ))),
                    ),
                    Text(
                      "Fly for less! Enjoy 20% off on the flights booking today.\nLimite offer..!!",
                      style: Styles.headlineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Stack(
                      children: [
                        Container(
                          width: 170,
                          height: 168,
                          decoration: BoxDecoration(
                              color: Color(0xFF3ABBBB),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 72),
                              child: Text("Discount\nSurvey",
                                  style: Styles.headlineStyle2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text(
                                  "This indicates a strong incentive for businesses to offer discounts as an competitive strategy.",
                                  style: TextStyle(
                                      fontSize: 14.5,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ]),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 15, color: Color(0xFF189999))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 75,
                      ),
                      width: 170,
                      height: 168,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/9.jpg"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(22)),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
