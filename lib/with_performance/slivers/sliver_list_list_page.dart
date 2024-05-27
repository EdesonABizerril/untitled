import 'dart:developer';

import 'package:flutter/material.dart';

class SliverListListPage extends StatelessWidget {
  const SliverListListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliver List List'),
      ),
      body: SliverList.list(
        children: List.generate(
          70,
          (index) {
            log('SLL: Item ${index + 1}');
            return ListTile(
              title: Text(
                'Item ${index + 1}',
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ),
    );
  }
}
