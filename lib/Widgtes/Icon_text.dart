import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(icon,
              color: Color(
                0xFF0FC2DF,
              )),
          SizedBox(
            width: 12,
          ),
          Text(
            text,
            style: Styles.textStyle,
          ),
         
        ],
      ),
    );
  }
}
