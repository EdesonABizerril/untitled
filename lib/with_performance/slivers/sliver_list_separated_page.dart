import 'dart:developer';

import 'package:flutter/material.dart';

class SliverListSeparatedPage extends StatelessWidget {
  const SliverListSeparatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliver List Separated'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList.separated(
            separatorBuilder: (BuildContext context, int index) => const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              log('SLS: Item ${index + 1}');
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
