// main.dart
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'flight_list_page.dart';
import 'seat_selection_page.dart';
import 'boarding_pass_page.dart';

void main() {
  runApp(FlightBookingApp());
}

class FlightBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight Booking App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/flight_list': (context) => FlightListPage(),
        '/seat_selection': (context) => SeatSelectionPage(),
        '/boarding_pass': (context) => BoardingPassPage(),
      },
    );
  }
}
