import 'package:flutter/material.dart';

class StateLocal extends StatefulWidget {
  const StateLocal({super.key});

  @override
  State<StateLocal> createState() => _StateLocalState();
}

class _StateLocalState extends State<StateLocal> {
  int nilai = 0;

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
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nilai = nilai - 1;
                      });
                    },
                    child: const Text('-1')),
                Text("$nilai", style: const TextStyle(fontSize: 20)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nilai = nilai + 1;
                      });
                    },
                    child: const Text('+1')),
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
