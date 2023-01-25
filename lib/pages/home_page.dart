import 'package:flutter/material.dart';
import 'package:ticket_book/utils/styles.dart';
import 'package:ticket_book/pages/ticket_view.dart';
import 'package:gap/gap.dart';
import 'package:ticket_book/pages/hotel_screen.dart';
import 'package:ticket_book/utils/app_info_list.dart';
import 'package:ticket_book/widgets/upcoming_flights.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Gap(15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good morning',
                            style: Styles.headLineStyle3,
                          ),
                          // SizedBox(height: 5,),
                          Gap(5),
                          Text(
                            'Book Tickets',
                            style: Styles.headLineStyle1,
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/images/img_1.png'))),
                      )
                    ],
                  ),
                ),
                Gap(15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 39,
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black12),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        Text(
                          'search',
                          style: Styles.headLineStyle4,
                        )
                      ],
                    ),
                  ),
                ),
                Gap(29),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: UpcomingFlights(
                      text1: 'Upcoming Flights',
                      text2: 'view all',
                    )),
                Gap(25),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        TicketView(),
                        Gap(9),
                        TicketView(),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: UpcomingFlights(
                      text1: 'Hotels',
                      text2: 'view all',
                    )),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(20),
                    child: Row(
                        children: hotelList
                            .map((singleHotel) =>
                                HotelScreen(hotel: singleHotel))
                            .toList())
                            ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
