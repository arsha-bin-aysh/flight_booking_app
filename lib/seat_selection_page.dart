// seat_selection_page.dart
import 'package:flutter/material.dart';

class SeatSelectionPage extends StatelessWidget {
  const SeatSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy seat layout
    final List<List<String>> seatLayout = [
      ['1A', '1B', '1C'],
      ['2A', '2B', '2C'],
      // Add more rows as needed
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Select Seats')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2,
        ),
        itemCount: seatLayout.length * 3,
        itemBuilder: (context, index) {
          final row = index ~/ 3;
          final column = index % 3;
          final seat = seatLayout[row][column];

          return GestureDetector(
            onTap: () {
              // Update seat availability logic
            },
            child: Card(
              color: Colors.green,
              child: Center(child: Text(seat)),
            ),
          );
        },
      ),
    );
  }
}
