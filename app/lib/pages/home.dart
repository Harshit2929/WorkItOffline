import 'package:app/pages/orders.dart';
import 'package:app/routes.dart';
import 'package:app/widgets/appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  final screens = <Widget>[
    Container(
        child: Center(
      child: Column(
        children: [
          const MyAppbar(
            text: "Home",
          ),
          Text("Home"),
        ],
      ),
    )),
    OrdersPage(),
    OrdersPage(),
    OrdersPage(),
  ];

  @override
  Widget build(BuildContext context) {
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
            label: "Orders",
          ),
          NavigationDestination(
            icon: Icon(Icons.money),
            label: "Receipts",
          ),
          NavigationDestination(
            icon: Icon(Icons.money),
            label: "Receipts",
          ),
          NavigationDestination(
            icon: Icon(Icons.money),
            label: "Training",
          ),
        ],
      ),
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
