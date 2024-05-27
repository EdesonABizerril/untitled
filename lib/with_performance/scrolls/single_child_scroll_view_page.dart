import 'dart:developer';

import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  const SingleChildScrollViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Child Scroll View'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: List.generate(
              70,
              (index) {
                log('SCSV: Item ${index + 1}');
                return Text(
                  'Item ${index + 1}',
                  textAlign: TextAlign.center,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
