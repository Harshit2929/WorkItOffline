import 'package:app/models/order.dart';
import 'package:app/widgets/appbar.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  late final List<Order> inProgressOrders;
  late final List<Order> doneOrders;
  late final List<Order> paymentClearedOrders;
  bool loading = false;

  @override
  void initState() {
    super.initState();
    inProgressOrders = [];
    doneOrders = [];
    paymentClearedOrders = [];
  }

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
                const Text("In Progress"),
                ListView.builder(
                  itemBuilder: (ctx, id) {
                    return itemBuilder(ctx, id, inProgressOrders,
                        inProgress: true);
                  },
                  itemCount: inProgressOrders.length,
                ),
                const Text("Done"),
                ListView.builder(
                  itemBuilder: (ctx, id) {
                    return itemBuilder(
                      ctx,
                      id,
                      doneOrders,
                    );
                  },
                  itemCount: doneOrders.length,
                ),
                const Text("Payment Cleared"),
                ListView.builder(
                  itemBuilder: (ctx, id) {
                    return itemBuilder(ctx, id, paymentClearedOrders);
                  },
                  itemCount: paymentClearedOrders.length,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget itemBuilder(BuildContext context, int index, List<Order> orderList,
      {bool inProgress = false, bool completed = false}) {
    return ListTile(
      leading: Text("id"),
      title: Text("Name of product"),
      trailing: Row(
        children: [
          Text("Quantity"),
          completed ? Checkbox(value: true, onChanged: (val) {}) : const Text("2500"),
        ],
      ),
    );
  }
}
