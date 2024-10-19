// boarding_pass_page.dart
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BoardingPassPage extends StatelessWidget {
  const BoardingPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy boarding pass data
    const String seatNumber = '1A';
    const String boardingGate = 'G12';



    

//dont forget to add downloaded json to this project and
//initialize firebase to ur project





    return Scaffold(
      appBar: AppBar(title: const Text('Boarding Pass')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Boarding Pass', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            const Text('Seat: $seatNumber', style: TextStyle(fontSize: 18)),
            const Text('Gate: $boardingGate', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            QrImageView(
              data: 'BoardingPassData',
              version: QrVersions.auto,
              size: 200.0,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save or download logic
              },
              child: const Text('Save Boarding Pass'),
            ),
          ],
        ),
      ),
    );
  }
}
