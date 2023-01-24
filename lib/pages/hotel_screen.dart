import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_book/utils/styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const HotelScreen({super.key,required this.hotel});

  @override
  Widget build(BuildContext context) {
    print(hotel);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      height: 300,
      width: MediaQuery.of(context).size.width*0.6,
      decoration: BoxDecoration(
        color: Colors.brown.shade300,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2,
            spreadRadius: 1

          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage('assets/images/${hotel['image']}'),
              fit: BoxFit.cover
              )
            ),
          ),
          Gap(15),
          Text('${hotel['place']}',style: TextStyle(color: Colors.white,fontSize: 25),textAlign: TextAlign.left,),
          Gap(15),
          Text('${hotel['destination']}',style: TextStyle(color: Colors.white),),
          Gap(15),
          Text('${hotel['price']}',style: TextStyle(color: Colors.white,fontSize: 19),)
        ],
      ),
    );
  }
}