import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/styles.dart';
import 'package:ticket_book/widgets/upcoming_flights.dart';
import 'package:ticket_book/widgets/flight_hotels.dart';
class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(10),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(
            AppLayout.getHeight(20),
          ),
          Text(
            'What are ',
            style: TextStyle(fontSize: AppLayout.getWidth(35)),
          ), // fontSize can be AppLayout.getWidth(35) or AppLayout.getHeight(10), both are same
          Text(
            'you looking for ?',
            style: TextStyle(
              fontSize: AppLayout.getWidth(35),
            ),
          ),
          Gap(
            AppLayout.getHeight(20),
          ),
          // Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          //   Container(
          //     alignment: Alignment.center,
          //     height: AppLayout.getHeight(35),
          //     width: AppLayout.getScreenWidth() * 0.45,
          //     decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.only(
          //             topLeft: Radius.circular(20),
          //             topRight: Radius.zero,
          //             bottomLeft: Radius.circular(20),
          //             bottomRight: Radius.zero)),
          //     child: Text('Flights'),
          //   ),
          //   Container(
          //     alignment: Alignment.center,
          //     height: AppLayout.getHeight(35),
          //     width: AppLayout.getScreenWidth() * 0.45,
          //     decoration: BoxDecoration(
          //         color: Color.fromARGB(255, 163, 172, 164),
          //         borderRadius: BorderRadius.only(
          //             topLeft: Radius.zero,
          //             topRight: Radius.circular(20),
          //             bottomLeft: Radius.zero,
          //             bottomRight: Radius.circular(20))),
          //     child: Text('Hotels'),
          //   ),
          // ]),
          FlightsHotels(text1: 'Flights',text2: 'Hotels',),
          Gap(AppLayout.getHeight(20)),
          Container(
            height: AppLayout.getHeight(40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Row(
              children: [
                Gap(AppLayout.getWidth(20)),
                Icon(
                  Icons.flight_takeoff_rounded,
                  color: Colors.grey,
                ),
                Gap(AppLayout.getWidth(20)),
                Text(
                  'Departure',
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                )
              ],
            ),
          ),
          // Gap(
          //   AppLayout.getHeight(25),
          // ),
          Transform.rotate(
              angle: 1.5, child: Icon(Icons.compare_arrows_rounded)),
          Container(
            height: AppLayout.getHeight(40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Row(
              children: [
                Gap(AppLayout.getWidth(20)),
                Icon(
                  Icons.flight_land_rounded,
                  color: Colors.grey,
                ),
                Gap(AppLayout.getWidth(20)),
                Text(
                  'Arrival',
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                )
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            alignment: Alignment.center,
            height: AppLayout.getHeight(40),
            decoration: BoxDecoration(
                color: Colors.orange.shade400,
                borderRadius: BorderRadius.circular(8)),
            child: Text('Find tickets'),
          ),
          Gap(AppLayout.getHeight(35)),
          UpcomingFlights(
            text1: 'Upcoming Flights',
            text2: 'view all',
          ),
          Gap(AppLayout.getHeight(35)),
          Row(
            children: [
              Container(
                height: AppLayout.getScreenHeight() * 0.35,
                padding: EdgeInsets.all(10),
                width: AppLayout.getScreenWidth() * 0.48,
                // color: Colors.purple.shade400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple.shade400),
                child: Column(
                  children: [
                    Container(
                        height: AppLayout.getHeight(120),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/images/sit.jpg'),
                                fit: BoxFit.cover))),
                    Gap(AppLayout.getHeight(25)),
                    Text('get flat 20% off on business class tickets ',style: TextStyle(color: Colors.white),),
                    Gap(AppLayout.getHeight(20)),
                    Text(
                      'terms and conditions apply* ',
                      style: TextStyle(fontSize: 9,color: Colors.white),
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getWidth(15)),
              Column(
                children: [
                  Container(
                    height: AppLayout.getHeight(155),
                    width: AppLayout.getScreenWidth()*0.37,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange.shade300
                    ),
                    child: Column(
                      children: [
                        Text('Discount for Survey',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                        Gap(10),
                        Text('Take a little surrvey and get Big discount**',style: TextStyle(color: Colors.white,),),

                      ],
                    ),
                  ),
                  Gap(AppLayout.getHeight(35)),
                  Container(
                    height: AppLayout.getHeight(150),
                    width: AppLayout.getScreenWidth()*0.37,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green.shade300
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/images/visa.png',fit: BoxFit.contain),
                        Gap(AppLayout.getHeight(20)),
                        Text('this is a visa',style: TextStyle(color: Colors.white),),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '🎊',
                                style: TextStyle(fontSize: 25),
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 40),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 25),
                              )
                            ]
                          ))
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
