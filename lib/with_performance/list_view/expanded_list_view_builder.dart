import 'dart:developer';

import 'package:flutter/material.dart';

class ExpandedWithListViewBuilder extends StatelessWidget {
  const ExpandedWithListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uso do Expanded'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
