import 'package:flutter/material.dart';
import 'package:sample_app/home/auth/login.dart';
import 'package:sample_app/home/booking.dart';
import 'package:sample_app/home/checkout.dart';
// import 'package:sample_app/home/compass.dart';
import 'package:sample_app/home/flow_chart.dart';
import 'package:sample_app/home/home_page.dart';
import 'package:sample_app/home/notification.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int index = 0;
  final tabs = [
    HomePage(),
    FlowChart(),
    Booking(),
    Checkout(),
    NotificationPage(),
    // Compass(),
    Login(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,

      child: Scaffold(
        backgroundColor: Colors.white,
        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          backgroundColor: Colors.white,
          fixedColor: Colors.white,

          onTap: (currentIndex) {
            setState(() {
              index = currentIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.black),
              backgroundColor: Colors.white,
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.compass_calibration_rounded,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              backgroundColor: Colors.white,
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none, color: Colors.black),
              backgroundColor: Colors.white,
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined, color: Colors.black),
              backgroundColor: Colors.white,
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined, color: Colors.black),
              backgroundColor: Colors.white,
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
