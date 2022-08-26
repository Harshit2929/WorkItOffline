import 'dart:io';

import 'package:app/constants/env.dart';
import 'package:app/pages/shg/shg_activities.dart';
import 'package:app/pages/shg/shg_main.dart';
import 'package:app/services/request.service.dart';
import 'package:http_parser/http_parser.dart';
import 'package:app/services/image_compression.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../models/shg.dart';
import '../../widgets/appbar.dart';

class HomePage extends StatefulWidget {
  final SHG shg;

  const HomePage({Key? key, required this.shg}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  late final List<Widget> screens;
  late final Future future;

  @override
  void initState() {
    super.initState();
    screens = <Widget>[
      SHGMain(),
      SHGActivities(),
    ];
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
          // NavigationDestinatAion(
          //   icon: Icon(Icons.list),
          //   label: "Orders",
          // ),
          // NavigationDestination(
          //   icon: Icon(Icons.money),
          //   label: "Receipts",
          // ),
          // NavigationDestination(
          //   icon: Icon(Icons.money),
          //   label: "Receipts",
          // ),
          // NavigationDestination(
          //   icon: Icon(Icons.money),
          //   label: "Training",
          // ),
        ],
      ),
    );
  }
}
