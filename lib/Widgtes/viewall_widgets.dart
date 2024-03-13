import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_styles.dart';
import 'package:flutter_application_1/utils/app_styles.dart';

class Appdoubletext extends StatelessWidget {
  final String bigtext;
  final String smalltext;
  const Appdoubletext(
      {Key? key, required this.bigtext, required this.smalltext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigtext,
          style: Styles.headlineStyle2,
        ),
        InkWell(
          onTap: () {
            print("You are tap");
          },
          child: Text(
            smalltext,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
