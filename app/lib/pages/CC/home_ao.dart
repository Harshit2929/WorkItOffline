import 'package:app/pages/CC/cc_activities.dart';
import 'package:app/pages/CC/cc_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/cluster.dart';

class HomeAO extends StatefulWidget {
  final Cluster cluster;

  const HomeAO({Key? key, required this.cluster}) : super(key: key);

  @override
  State<HomeAO> createState() => _HomeAOState();
}

class _HomeAOState extends State<HomeAO> {
  int currentIndex = 0;
  late final List<Widget> screens;
  late final Future future;

  @override
  void initState() {
    super.initState();
    screens = <Widget>[CCMain(), CCActivities()];
    future = Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: builder,
      future: future,
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

  Widget builder(BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int id) {
          setState(() {
            currentIndex = id;
          });
        },
        selectedIndex: currentIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.list),
            label: "Activities",
          ),
        ],
      ),
    );
  }
}
