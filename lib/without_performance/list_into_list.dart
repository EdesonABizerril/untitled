import 'dart:developer';

import 'package:flutter/material.dart';

class ListViewIntoListView extends StatelessWidget {
  const ListViewIntoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded em SingleChildScrollView'),
      ),
      body: ListView.builder(
        itemCount: 70,
        itemBuilder: (BuildContext context, int index) {
          log('EXSCSV: Item ${index + 1}');
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
