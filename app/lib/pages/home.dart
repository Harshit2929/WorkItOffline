import 'package:app/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: GridView.count(
        crossAxisCount: 2,
        children: [
          _button(Icons.add, '', context, AllRoutesConstants.newMeeting),
          _button(Icons.list_alt, '', context, AllRoutesConstants.records)
        ],
      )),
    );
  }

  Widget _button(
      IconData icon, String text, BuildContext context, String route) {
    return Container(
        padding: const EdgeInsets.all(20),
        width: 50,
        height: 50,
        child: Container(
          color: Colors.pink,
          child: IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, route);
            },
            icon: Icon(icon),
          ),
        ));
  }
}
