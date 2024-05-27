import 'dart:developer';

import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView(
        children: [
          ...List.generate(
            70,
            (index) {
              log('LV: Item ${index + 1}');
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
    );
  }
}
