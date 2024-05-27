import 'dart:developer';

import 'package:flutter/material.dart';

class ListViewSeparatedPage extends StatelessWidget {
  const ListViewSeparatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Separated'),
      ),
      body: ListView.separated(
        itemCount: 70,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.grey,
          thickness: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          log('LVS: Item ${index + 1}');
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
