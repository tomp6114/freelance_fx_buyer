import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../account_screen/account_screen.dart';
import '../categories_screen/categories_screen.dart';
import '../chat_screen/chat_screen_buyer.dart';
import '../home_screen/home_screen.dart';
import '../manage_orders_screen/manage_oders_screen.dart';


class BottomNavigationBuyer extends StatefulWidget {
  const BottomNavigationBuyer({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBuyer> createState() => _BottomNavigationBuyerState();
}

class _BottomNavigationBuyerState extends State<BottomNavigationBuyer> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final pages = [
    HomeScreenBuyer(),
    ChatScreenBuyer(),
    CategoriesScreen(),
    ManageOrdersScreen(),
    AccountScreenBuyer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: appBarBuyer(""),
      body: pages[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 50, 50, 51),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.grey[200],
              label: "Home",
              icon: const Icon(
                Icons.home_outlined,
                size: 32,
              ),
            ),
            const BottomNavigationBarItem(
              label: "Chat",
              icon: Icon(
                Icons.message_rounded,
                size: 30,
              ),
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.view_module_rounded,
              ),
              label: 'Categories',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Cart',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: 'User',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 218, 31, 133),
          onTap: _onItemTapped,
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: const Color.fromARGB(255, 107, 105, 105),
          iconSize: 30,
        ),
      ),
    );
  }

  AppBar appBarBuyer(String title) {
    return AppBar(
      toolbarHeight: 70,
      centerTitle: true,
      title: Text(
        title,
        style: GoogleFonts.montserrat(
            color: titleColor, fontSize: 27, fontWeight: FontWeight.bold),
      ),
      elevation: 0,
      backgroundColor: kwhite,
    );
  }
}
