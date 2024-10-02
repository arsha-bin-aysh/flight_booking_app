// flight_list_page.dart
import 'package:flutter/material.dart';

class FlightListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Dummy flight data
    final List<Map<String, String>> flights = [
      {
        'flightNumber': 'AA123',
        'departureTime': '08:00 AM',
        'arrivalTime': '10:00 AM',
        'airline': 'American Airlines',
        'ticketPrice': '\$200'
      },





      // Add more flights as needed






    ];

    return Scaffold(
      appBar: AppBar(title: Text('Available Flights')),
      body: ListView.builder(
        itemCount: flights.length,
        itemBuilder: (context, index) {
          final flight = flights[index];
          return ListTile(
            title: Text('${flight['flightNumber']} - ${flight['airline']}'),
            subtitle: Text(
                'Departure: ${flight['departureTime']} | Arrival: ${flight['arrivalTime']}'),
            trailing: Text(flight['ticketPrice'] ?? 'N/A'),
            onTap: () {
              // Navigate to seat selection
              Navigator.pushNamed(context, '/seat_selection');
            },
          );
        },
      ),
    );
  }
}
