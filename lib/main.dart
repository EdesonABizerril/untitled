import 'package:flutter/material.dart';

import 'with_performance/with_performance.dart';
import 'without_performance/without_performance.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listas Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Listas em alta performance'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 24, bottom: 60),
        children: <Widget>[
          const Text(
            'Listas em alta performance',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Container(
            color: Colors.grey[200],
            margin: const EdgeInsets.symmetric(vertical: 24),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: const Text(
              'Scroll',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text('Single Child Scroll View'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SingleChildScrollViewPage()),
              );
            },
          ),
          Container(
            color: Colors.grey[200],
            margin: const EdgeInsets.symmetric(vertical: 24),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: const Text(
              'ListView',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text('List View'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListViewPage()),
              );
            },
          ),
          ListTile(
            title: const Text('List View Builder'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListViewBuilderPage()),
              );
            },
          ),
          ListTile(
            title: const Text('List View Separated'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListViewSeparatedPage()),
              );
            },
          ),
          Container(
            color: Colors.grey[200],
            margin: const EdgeInsets.symmetric(vertical: 24),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: const Text(
              'Slivers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text('Sliver List'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SliverListListPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Sliver Child List'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SliverChildListPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Sliver Child Builder'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SliverChildBuilderPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Sliver List Builder'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SliverListBuilderPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Sliver List Separated'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SliverListSeparatedPage()),
              );
            },
          ),
          Container(
            color: Colors.grey[200],
            margin: const EdgeInsets.symmetric(vertical: 24),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: const Text(
              'Custom',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text('Custom Scroll View'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CustomScrollViewPage()),
              );
            },
          ),
          const Divider(height: 60),
          const Text(
            'Listas com problemas de performance',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ListTile(
            title: const Text('ShrinkWrap em SingleChildScrollView'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ShrinkWrapSingleChildScrollViewPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Expanded com ListViewBuilder'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExpandedWithListViewBuilder()),
              );
            },
          ),
          ListTile(
            title: const Text('Expanded dentro de SingleChildScrollView'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExpandedWithSingleChildScrollView()),
              );
            },
          ),
          ListTile(
            title: const Text('ListView dentro de ListView'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListViewIntoListView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
