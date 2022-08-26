// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'SHG List',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  // Generate some dummy data
  final List<Map<String, dynamic>> _items = List.generate(
      10,
          (index) =>
      {"id": index+1, "title": "Item ${index+1}", "subtitle": "Subtitle ${index+1}"});

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SHG List'),
        ),
        body: ListView(
            children: ListTile.divideTiles(
                color: Colors.deepPurple,
                tiles: _items.map((item) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text(item['id'].toString()),
                  ),
                  title: Text(item['title']),
                  subtitle: Text(item['subtitle']),
                  trailing: IconButton(
                    icon: const Icon(Icons.add_a_photo),
                    onPressed: () {},
                  ),
                ))).toList()
        )

    );
  }
}