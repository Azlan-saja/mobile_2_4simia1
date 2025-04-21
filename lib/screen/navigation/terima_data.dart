import 'package:flutter/material.dart';

class TerimaData extends StatelessWidget {
  const TerimaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terima Data'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'Instan 1 Hari');
          },
          child: const Text('selesai'),
        ),
      ),
    );
  }
}
