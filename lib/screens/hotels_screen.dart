import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_layout.dart';
import 'package:flutter_application_1/utils/app_styles.dart';

class Hotelscreen extends StatelessWidget {
  final Map<String, dynamic> hotel; //calling the list as key value pair
  const Hotelscreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Hoteprice is ${hotel["price"]}");
    final Size = Applayout.getSize(context);
    return Container(
      width: Size.width * 0.6,
      height: 320,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 25, top: 8),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(44),
          boxShadow: [BoxShadow(color: Colors.grey.shade200)]),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 20,
                    spreadRadius: 1,
                  )
                ],
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/${hotel["images"]}"))),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            hotel["place"],
            style: Styles.headlineStyle5.copyWith(color: Styles.kakaicolor),
          ),
          SizedBox(
            height: 0,
          ),
          Text(
            hotel["destination"],
            style: Styles.headlineStyle5.copyWith(color: Styles.textColor),
          ),
          SizedBox(height: 0),
          Text(
            "\$${hotel["price"]}/night",
            style: Styles.headlineStyle5.copyWith(color: Styles.kakaicolor),
          ),
        ],
      ),
    );
  }
}
