import 'dart:developer';

import 'package:flutter/material.dart';

class ShrinkWrapSingleChildScrollViewPage extends StatelessWidget {
  const ShrinkWrapSingleChildScrollViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShrinkWrap de SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'É um erro shrinkWrap em listas grandes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Ele deve ser utilizado em pequenas listas e em locais onde é preciso fornecer o tamanho do espaço ocupado.',
              style: TextStyle(fontSize: 14),
            ),
            ListView.builder(
              itemCount: 70,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                log('DSCLV: Item ${index + 1}');
                return ListTile(
                  title: Text(
                    'Item ${index + 1}',
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
