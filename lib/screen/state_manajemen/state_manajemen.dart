import 'package:flutter/material.dart';
import 'package:master/screen/state_manajemen/state_local.dart';

class StateManajemen extends StatelessWidget {
  const StateManajemen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar State Manajemen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StateLocal(),
                    ),
                  );
                },
                child: const Text('State Local')),
            ElevatedButton(onPressed: () {}, child: const Text('State Global')),
          ],
        ),
      ),
    );
  }
}
