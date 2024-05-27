import 'dart:developer';

import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  const ListViewBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Builder'),
      ),
      body: ListView.builder(
        itemCount: 70,
        itemBuilder: (context, index) {
          log('LVB: Item ${index + 1}');
          return ListTile(
            title: Text(
              'Item ${index + 1}',
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }
}
