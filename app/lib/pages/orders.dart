import 'package:app/database/orders.database.dart';
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
    return FutureBuilder<List<Order>>(
      builder: builder,
      future: getAllOrders(),
      initialData: const [],
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
          completed
              ? Checkbox(value: true, onChanged: (val) {})
              : const Text("2500"),
        ],
      ),
    );
  }

  Widget builder(BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting)
      return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
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
                Text(
                  "In Progress",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (ctx, id) {
                    return itemBuilder(ctx, id, inProgressOrders,
                        inProgress: true);
                  },
                  itemCount: inProgressOrders.length,
                ),
                const Text("Done"),
                ListView.builder(
                  shrinkWrap: true,
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
                  shrinkWrap: true,
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
}
