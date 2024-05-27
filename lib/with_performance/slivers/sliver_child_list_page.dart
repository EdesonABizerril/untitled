import 'dart:developer';

import 'package:flutter/material.dart';

class SliverChildListPage extends StatelessWidget {
  const SliverChildListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliver Child List'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                70,
                (index) {
                  log('SCL: Item ${index + 1}');
                  return ListTile(
                    title: Text(
                      'Item ${index + 1}',
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
