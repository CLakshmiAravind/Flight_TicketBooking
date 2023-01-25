import 'package:flutter/material.dart';
import 'package:ticket_book/utils/app_layout.dart';
class FlightsHotels extends StatelessWidget {
  final String text1;
  final String text2;
  const FlightsHotels({super.key,required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              alignment: Alignment.center,
              height: AppLayout.getHeight(35),
              width: AppLayout.getScreenWidth() * 0.45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.zero,
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.zero)),
              child: Text('${text1}'),
            ),
            Container(
              alignment: Alignment.center,
              height: AppLayout.getHeight(35),
              width: AppLayout.getScreenWidth() * 0.45,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 163, 172, 164),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.circular(20))),
              child: Text('${text2}'),
            ),
          ]);
  }
}