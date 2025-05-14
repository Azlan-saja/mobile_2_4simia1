import 'package:flutter/material.dart';

class KirimTerimaData extends StatelessWidget {
  final int nilaiA;
  KirimTerimaData({super.key, required this.nilaiA});

  final nilaiBController = TextEditingController();

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
                initialValue: nilaiA.toString(),
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
                controller: nilaiBController,
                keyboardType: TextInputType.number,
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
