// home_page.dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Flights')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _fromController,
              decoration: InputDecoration(labelText: 'From'),
            ),
            TextField(
              controller: _toController,
              decoration: InputDecoration(labelText: 'To'),
            ),
            TextField(
              controller: _dateController,
              decoration: InputDecoration(labelText: 'Departure Date'),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {
                  _dateController.text = pickedDate.toString().split(' ')[0];
                }
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement flight search logic
                Navigator.pushNamed(context, '/flight_list');
              },
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
