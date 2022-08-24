import 'package:app/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 50,
        height: 50,
        color: Colors.pink,
        child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AllRoutesConstants.newMeeting);
            },
            icon: const Icon(Icons.add)),
      ),
    ));
  }
}
