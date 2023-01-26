import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_book/utils/app_layout.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: ListView(
        padding: EdgeInsets.all(16),
          children: [
            Column(
              children: [
                Gap(10),
                Text('Profile',style: TextStyle(fontSize: 40,),),
                Gap(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/img_1.png',scale: 4,),
                    Column(
                      children: [
                        Text('Lakshmi Aravind',style: TextStyle(fontSize: 25),),
                        Text('premium status',style: TextStyle(color: Colors.red),)
                      ],
                    ),
                    Text('Edit'),
                  ],
                ),
                Gap(8),
                Divider(
                  color: Colors.black,
                ),
                Gap(8),
                Text('Accumulated miles',style: TextStyle(fontSize:25)),
                Gap(8),
                Text('5490',style: TextStyle(fontSize:31)),
                Gap(8),
                Divider(
                  color: Colors.black,
                ),
                Gap(8),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Column(
                    children: [
                      Text('Details',style: TextStyle(fontSize: 30),),
                      Divider(
                  color: Colors.grey,
                ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Name'),
                          Text('LakshmiAravind',style: TextStyle(fontSize: 18),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Age'),
                          Text('21',style: TextStyle(fontSize: 18),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Aadhar'),
                          Text('3840****7394',style: TextStyle(fontSize: 18),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Phone'),
                          Text('+91 *******335',style: TextStyle(fontSize: 18),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Location'),
                          Text('Delhi',style: TextStyle(fontSize: 18),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Passprt ID'),
                          Text('843927457',style: TextStyle(fontSize: 18),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Card Deltails'),
                          Text('********8347',style: TextStyle(fontSize: 18),),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),

          ],
        ),
      ),
      bottomSheet: Container(
        height: AppLayout.getScreenHeight()*0.1,
        child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(Icons.info_outline),
                Text('About us')
              ],
            ),
            Row(children: [
              Icon(Icons.person_3_outlined),
              Text('Lakshmi Aravind'),
            ],),
            Row(children: [
              Icon(Icons.link),
              Text('github.com/CLakshmiAravind'),
            ],)
          ],
        ),
      ),
    );
  }
}