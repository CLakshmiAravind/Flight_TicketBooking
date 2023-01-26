import 'package:flutter/material.dart';
import 'package:ticket_book/pages/home_page.dart';
import 'package:ticket_book/pages/profile_page.dart';
import 'package:ticket_book/pages/search_tab.dart';
import 'package:ticket_book/pages/ticket_tab.dart';
class NavbarBottom extends StatefulWidget {
  const NavbarBottom({super.key});

  @override
  State<NavbarBottom> createState() => _NavbarBottomState();
}

class _NavbarBottomState extends State<NavbarBottom> {
  int _selectedIndex = 0;
  static final List _widgetOptions = [
    HomePage(),
    SearchTab(),
    TicketTab(),
    ProfilePage(),
  ];

  void _changeIndex(int index){
    setState(() {
    _selectedIndex = index;
    });
    print('${index}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //     appBar: AppBar(
    //   title: Text('Book Tickets'),
    //   centerTitle:true,
    // ),
    body: Center(child: _widgetOptions[_selectedIndex]),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,                  // otherwise icons will move slightly when clicked
      showUnselectedLabels: false,                          // label text will be displayed if it is true            
      showSelectedLabels: false,                            // label text will be displayed if it is true
      selectedItemColor: Color.fromARGB(255, 17, 92, 190),// selected icon will change its color
      unselectedItemColor: Colors.black,                  // unselected icon will change its color
      onTap: _changeIndex,                                  // takes function
      currentIndex: _selectedIndex,                         // takes index of items list
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home',),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_outlined),label: 'Ticket'),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
    ]),
    );
  }
}
