import 'package:flutter/material.dart';

class KirimTerimaData extends StatelessWidget {
  const KirimTerimaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kirim & Terima Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Nilai A?',
                  prefixIcon: Icon(Icons.question_mark),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Input Nilai B',
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Hitung dan Tutup'),
            ),
          ],
        ),
      ),
    );
  }
}
