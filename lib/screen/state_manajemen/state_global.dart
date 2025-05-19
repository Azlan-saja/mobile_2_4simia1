import 'package:flutter/material.dart';
import 'package:master/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class StateGlobal extends StatelessWidget {
  const StateGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar State Global'),
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
                      provider.kurangin();
                    },
                    child: const Text('-1')),
                Text("${provider.hasil}", style: const TextStyle(fontSize: 20)),
                ElevatedButton(
                    onPressed: () {
                      provider.tambahin();
                    },
                    child: const Text('+1')),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Menggunakan State Global: package Provider'),
            const Divider(),
            const Text(
              'Lihat layar Dashboad pada menu Messgage',
            ),
          ],
        ),
      ),
    );
  }
}
