import 'package:flutter/material.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/styles.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width-50,
      height: AppLayout.getHeight(200),
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
              color: Colors.blueGrey.shade400,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21))
              ),
              padding: EdgeInsets.only(left:16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('NDLS',style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.keyboard_double_arrow_right_rounded,color: Colors.white,),
                              Transform.rotate(angle:1.5,child: Icon(Icons.local_airport_sharp,color: Colors.white,)),
                              Icon(Icons.keyboard_double_arrow_right_rounded,color: Colors.white,),
                            ],
                          ),
                          Text('2hr 50min',style: TextStyle(fontSize: 12,color: Colors.white),),
                        ],
                      ),
                      Text('BLR',style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('New delhi',style: TextStyle(color: Colors.white),),
                      Text('Banglore',style: TextStyle(color: Colors.white),),
                    ],
                  )
                ],
                
              ),
            ),
            Container(
              color: Color(0XFFF37B67),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 20,width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    )),
                  )
                ],
              ),
            ),
            Container(
              // color: Color(0XFFF37B67),
              height: 60,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5),bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16)),
                color: Color(0XFFF37B67)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      
                      Text("25 Jan",style: TextStyle(fontSize: 14,color: Colors.white),),
                      Text(" 08:00 am ",style: TextStyle(fontSize: 14,color: Colors.white),),
                      Text("    49      ",style: TextStyle(fontSize: 14,color: Colors.white),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Date',style: TextStyle(fontSize: 14,color: Colors.white)),
                      Text('Duration',style: TextStyle(fontSize: 14,color: Colors.white)),
                      Text('Number',style: TextStyle(fontSize: 14,color: Colors.white)),
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