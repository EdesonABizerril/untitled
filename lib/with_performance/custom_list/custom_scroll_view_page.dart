import 'dart:developer';

import 'package:flutter/material.dart';

class CustomScrollViewPage extends StatelessWidget {
  const CustomScrollViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Scroll View'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 35,
              (context, index) {
                log('CSV1: Item ${index + 1}');
                return ListTile(
                  title: Text(
                    'Item ${index + 1}',
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 35,
              (context, index) {
                log('CSV2: Item ${index + 1}');
                return ListTile(
                  title: Text(
                    'Item ${index + 1}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    )
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
