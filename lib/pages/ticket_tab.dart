import 'package:flutter/material.dart';
import 'package:ticket_book/pages/ticket_view.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/widgets/flight_hotels.dart';
import 'package:gap/gap.dart';

class TicketTab extends StatelessWidget {
  const TicketTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Gap(AppLayout.getHeight(25)),
          Text(
            'Tickets',
            style: TextStyle(fontSize: 38, color: Colors.black),
          ),
          Gap(AppLayout.getHeight(25)),
          FlightsHotels(text1: 'text1', text2: 'text2'),
          Gap(AppLayout.getHeight(25)),
          Container(
            // height: AppLayout.getScreenHeight()*0.8,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'NDLS',
                      style: TextStyle(fontSize: 17),
                    ),
                    Transform.rotate(angle: 1.6, child: Icon(Icons.flight)),
                    Text(
                      'BLR',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New Delhi'),
                    Text('2hr 50min'),
                    Text('Bangalore')
                  ],
                ),
                Gap(7),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                Gap(7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1st may',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text('8:00 AM'),
                    Text(
                      '     23     ',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Date'), Text('Time'), Text('Number')],
                ),
                Gap(7),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                Gap(7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lakshmi',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      '170848',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Passenger'), Text('Passport')],
                ),
                Gap(7),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                Gap(7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1294739054',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      'B2SE48',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Ticket ID'), Text('Booking Code')],
                ),
                Gap(7),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/visa.png',
                          scale: 11,
                        ),
                        Text('***223')
                      ],
                    ),
                    Text('4619 INR')
                  ],
                ),
                Gap(7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Payment method'), Text('Price')],
                ),
              ],
            ),
          ),
          Gap(20),
          TicketView(),
        ],
      ),
    );
  }
}
