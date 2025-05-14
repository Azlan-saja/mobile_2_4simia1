import 'package:flutter/material.dart';
import 'package:master/screen/navigation/kirim_data.dart';
import 'package:master/screen/navigation/kirim_terima_data.dart';
import 'package:master/screen/navigation/terima_data.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});

  final terimaDataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KirimData(nama: 'AzlansajaTV'),
                  ),
                );
              },
              child: const Text('Kirim Data'),
            ),
            const Divider(thickness: 5),
            ElevatedButton(
              onPressed: () async {
                final hasil = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TerimaData(),
                  ),
                );
                if (hasil != null) {
                  terimaDataController.text = hasil;
                }
              },
              child: const Text('Terima Data'),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                controller: terimaDataController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Expedisi: Data dari layar Terima Data?',
                  prefixIcon: Icon(Icons.question_mark),
                ),
              ),
            ),
            const Divider(thickness: 5),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Input Nilai A',
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KirimTerimaData(),
                  ),
                );
              },
              child: const Text('Kirim & Terima Data'),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'A + B = ?',
                  prefixIcon: Icon(Icons.question_mark),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
