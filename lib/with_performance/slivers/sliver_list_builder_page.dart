import 'dart:developer';

import 'package:flutter/material.dart';

class SliverListBuilderPage extends StatelessWidget {
  const SliverListBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliver List Builder'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList.builder(
            itemBuilder: (BuildContext context, int index) {
              log('SLB: Item ${index + 1}');
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
