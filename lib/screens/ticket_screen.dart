import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ticket_view.dart';
import 'package:flutter_application_1/screens/tickets_tab.dart';
import 'package:flutter_application_1/utils/app_infoticket.dart';
import 'package:flutter_application_1/utils/app_layout.dart';
import 'package:flutter_application_1/utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = Applayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Tickets",
                style: Styles.headlineStyle1,
              ),
              SizedBox(
                height: 20,
              ),
              Apptickettab(firsttab: "Upcoming", secondtab: "previous"),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 17),
                child: Ticketview(
                  ticket: ticketList[0],
                  
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
//See  the lecture after 4 hours
