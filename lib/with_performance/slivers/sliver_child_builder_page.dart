import 'dart:developer';

import 'package:flutter/material.dart';

class SliverChildBuilderPage extends StatelessWidget {
  const SliverChildBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliver Child Builder'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 70,
              (context, index) {
                log('SCB: Item ${index + 1}');
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
    );
  }
}
