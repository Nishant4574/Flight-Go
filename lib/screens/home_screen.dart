import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgtes/viewall_widgets.dart';
import 'package:flutter_application_1/screens/hotels_screen.dart';
import 'package:flutter_application_1/screens/ticket_view.dart';
import 'package:flutter_application_1/utils/app_infolist.dart';
import 'package:flutter_application_1/utils/app_infoticket.dart';
import 'package:flutter_application_1/utils/app_styles.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        children: [
          Container(
            color: Styles.bgcolor,
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, //spacing them equally

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .start, //aligning the text in proper
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Good Morning",
                          style: Styles.headlineStyle3,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: Styles.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'images/3.jpg',
                            ),
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 12,
                      vertical: 12), //helps us increasing the serach box size
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6F0),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search_rounded,
                        color: Color(0xFFbFC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headlineStyle4,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Appdoubletext(
                    bigtext: "Upcoming flights", smalltext: "View all")
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: ticketList
                    .map((singleticket) => Ticketview(ticket: singleticket, ))
                    .toList(),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headlineStyle2,
                ),
                InkWell(
                  onTap: () {
                    print("You are tap");
                  },
                  child: Text(
                    "View all",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList
                    .map((singlehotel) => Hotelscreen(hotel: singlehotel))
                    .toList() ////calling the list as key value pair
                ),
          ),
        ],
      ),
    );
  }
}
