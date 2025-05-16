import 'package:flutter/material.dart';

class StateLocal extends StatelessWidget {
  const StateLocal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar State Local'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('-1')),
                const Text("X", style: TextStyle(fontSize: 20)),
                ElevatedButton(onPressed: () {}, child: const Text('+1')),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Menggunakan State Local: SetState()')
          ],
        ),
      ),
    );
  }
}
