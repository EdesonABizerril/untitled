import 'dart:developer';

import 'package:flutter/material.dart';

class ExpandedWithSingleChildScrollView extends StatelessWidget {
  const ExpandedWithSingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded em SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'É um erro Expanded em listas grandes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Ele deve ser utilizado em pequenas listas e em locais onde é preciso fornecer o tamanho do espaço ocupado.',
              style: TextStyle(fontSize: 14),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 70,
                itemBuilder: (BuildContext context, int index) {
                  log('EXLVB: Item ${index + 1}');
                  return ListTile(
                    title: Text(
                      'Item ${index + 1}',
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
