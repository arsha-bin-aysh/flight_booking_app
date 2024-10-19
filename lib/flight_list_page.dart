import 'package:flutter/material.dart';

class FlightListPage extends StatelessWidget {
  const FlightListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy flight data
    final List<Map<String, String>> flights = [
      {
        'flightNumber': 'AA123',
        'departureTime': '08:00 AM',
        'arrivalTime': '10:00 AM',
        'airline': 'American Airlines',
        'ticketPrice': '\$200',
      },
      {
        'flightNumber': 'UA789',
        'departureTime': '01:00 PM',
        'arrivalTime': '03:30 PM',
        'airline': 'United Airlines',
        'ticketPrice': '\$180',
      },
      {
        'flightNumber': 'BA345',
        'departureTime': '02:00 PM',
        'arrivalTime': '04:00 PM',
        'airline': 'British Airways',
        'ticketPrice': '\$300',
      },
      {
        'flightNumber': 'AF567',
        'departureTime': '05:00 PM',
        'arrivalTime': '08:00 PM',
        'airline': 'Air France',
        'ticketPrice': '\$320',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Available Flights',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo.shade700, Colors.blue.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: flights.length,
          itemBuilder: (context, index) {
            final flight = flights[index];

            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Material(
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.white, Colors.grey.shade200],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              flight['flightNumber']!,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo,
                              ),
                            ),
                            const Icon(
                              Icons.flight_takeoff,
                              color: Colors.blueAccent,
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Departure: ${flight['departureTime']}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Arrival: ${flight['arrivalTime']}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey.shade800,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  flight['airline']!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  flight['ticketPrice']!,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            // Implement seat selection navigation
                            Navigator.pushNamed(context, '/seat_selection');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigoAccent, // Updated here
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: const Text(
                            'Select Seats',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
