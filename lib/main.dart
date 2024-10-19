import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'flight_list_page.dart';
import 'seat_selection_page.dart';
import 'boarding_pass_page.dart';

void main() {
  runApp(const FlightBookingApp());
}

class FlightBookingApp extends StatelessWidget {
  const FlightBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight Booking App',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blueAccent,
          secondary: Colors.orangeAccent,
        ),
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          headlineSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black87),
          bodyMedium: TextStyle(fontSize: 16.0, color: Colors.black54),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.orangeAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          textTheme: ButtonTextTheme.primary,
        ),
        cardTheme: const CardTheme(
          elevation: 4,
          shadowColor: Colors.black38,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.blueAccent,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/flight_list': (context) => const FlightListPage(),
        '/seat_selection': (context) => const SeatSelectionPage(),
        '/boarding_pass': (context) => const BoardingPassPage(),
      },
    );
  }
}
