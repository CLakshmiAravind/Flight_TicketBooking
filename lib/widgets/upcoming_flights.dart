import 'package:flutter/material.dart';
import 'package:ticket_book/utils/styles.dart';

class UpcomingFlights extends StatelessWidget {
  final String text1;
  final String text2;
  const UpcomingFlights({super.key,required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${text1}',
                        style: Styles.headLineStyle2,
                      ),
                      InkWell(
                        child: Text(
                          '${text2}',
                          style: TextStyle(color: Colors.blue, fontSize: 15.5),
                        ),
                        onTap: () {
                          print('you are tapped');
                        },
                      )
                    ],
                  );
  }
}