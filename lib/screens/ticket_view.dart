import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgtes/Circle_container.dart';
import 'package:flutter_application_1/utils/app_layout.dart';
import 'package:flutter_application_1/utils/app_styles.dart';

class Ticketview extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const Ticketview({Key? key, required this.ticket})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color:  Color(0xFF526799)  ,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(
                  16), //This is responsible for spacing between the container from all the sides
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      ticket["from"]["code"],
                      style: 
                           Styles.headlineStyle3.copyWith(color: Colors.white)
                          
                    ),
                    Expanded(
                        child: Container()), //helps giving us equally spaced
                    ThickContainer(
                      isColor: true,
                    ),
                    Expanded(
                        child: Stack(children: [
                      //stack is used for overlapping of icon and the lines in whit colors
                      SizedBox(
                        height: 24,
                        child: LayoutBuilder(
                          //grabbing the width

                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            print(
                                "The width is ${constraints.constrainWidth()}"); // Its help to calculate the width betwwen the const spacer i.e expander:Container()
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize:
                                  MainAxisSize.max, //put children one by one
                              children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => SizedBox(
                                        height: 1,
                                        width: 3,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: 
                                                 Colors.white
                                                
                                          ),
                                        ),
                                      )),
                            );
                          },
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: Icon(
                            Icons.airplanemode_on_outlined,
                            color: 
                                 Colors.white
                                
                          ),
                        ),
                      ),
                    ])),

                    ThickContainer(
                      isColor: true,
                    ),
                    Expanded(
                        child: Container()), //helps giving us equally spaced
                    Text(
                      ticket["to"]["name"],
                      style:
                           Styles.headlineStyle3.copyWith(color: Colors.white)
                          
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 100,
                        child: Text(ticket["from"]["name"],
                            style: 
                                 Styles.headlineStyle4
                                    .copyWith(color: Colors.white)
                                )),

                    //change it
                    Text(
                      ticket["flying_time"],
                      style:  
                           Styles.headlineStyle3.copyWith(color: Colors.white)
                          ,
                    ),

                    SizedBox(
                      width: 100,
                      child: Text(ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: 
                               Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                               ),
                    )
                  ],
                )
              ]),
            ),
            //Showing the blue part of the ticket
            //Now showing the orage part of the ticket
            Container(
              color:   Colors.red ,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: 
                             Colors.white,
                            
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            direction: Axis.horizontal,
                            children: List.generate(
                                //t, which specify limitations on the widget's size.
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                      width: 5,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white)),
                                    )));
                      },
                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: (const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket["date"],
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "Day",
                            style: Styles.headlineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            ticket["departure_time"],
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "Departure Time",
                            style: Styles.headlineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            ticket["number"].toString(),
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "Number",
                            style: Styles.headlineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
