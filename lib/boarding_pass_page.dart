// boarding_pass_page.dart
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BoardingPassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Dummy boarding pass data
    final String seatNumber = '1A';
    final String boardingGate = 'G12';



    

//dont forget to add downloaded json to this project and
//initialize firebase to ur project





    return Scaffold(
      appBar: AppBar(title: Text('Boarding Pass')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Boarding Pass', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Seat: $seatNumber', style: TextStyle(fontSize: 18)),
            Text('Gate: $boardingGate', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            QrImageView(
              data: 'BoardingPassData',
              version: QrVersions.auto,
              size: 200.0,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save or download logic
              },
              child: Text('Save Boarding Pass'),
            ),
          ],
        ),
      ),
    );
  }
}
