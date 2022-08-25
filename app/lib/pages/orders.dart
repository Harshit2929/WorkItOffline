import 'package:app/widgets/appbar.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyAppbar(
            text: "Orders",
            subtext: "View All orders sales given to your SHG",
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Text("In Progress"),
                ListView.builder(itemBuilder: itemBuilder),
                Text("In Progress"),
                ListView.builder(itemBuilder: itemBuilder),
                ListView.builder(itemBuilder: itemBuilder),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget itemBuilder(BuildContext context, int index) {}
}
