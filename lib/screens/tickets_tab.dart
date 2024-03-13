import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgtes/Icon_text.dart';
import 'package:flutter_application_1/Widgtes/viewall_widgets.dart';
import 'package:flutter_application_1/utils/app_layout.dart';
import 'package:flutter_application_1/utils/app_styles.dart';
import 'package:get/get.dart';

class Apptickettab extends StatelessWidget {
  final String firsttab;
  final String secondtab;
  const Apptickettab({Key?key,required this.firsttab,required  this.secondtab}):super(key:key);

  @override
  Widget build(BuildContext context) {
    final Size = Applayout.getSize(context);
    return Container(
      width: 100,
      padding: EdgeInsets.all(2.8),
      child: Row(
        children: [
          Container(
            width: 168,
            padding: EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(firsttab),
            ),
          ),
//Airline tickets
          Container(
            padding: EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
              color: Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(secondtab),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          color: const Color(0xFFF4F6FD)),
    );
  }
}
