import 'dart:convert';

import 'package:app/constants/env.dart';
import 'package:app/models/order.dart';
import 'package:app/services/msg.service.dart';
import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';

class CCActivities extends StatelessWidget {
  CCActivities({Key? key}) : super(key: key);

  String? title, product, desc;
  int? qty;
  double? payment;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Text("Assign new activity",
                  style: Theme.of(context).textTheme.headline4),
              TextField(
                decoration: InputDecoration(
                  labelText: 'User Name',
                  hintText: 'Enter Your Name',
                ),
                onChanged: (val) {
                  title = val;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Product Name',
                  hintText: 'Enter the product name',
                ),
                onChanged: (val) {
                  product = val;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Quantity',
                  hintText: 'Enter the required quantity',
                ),
                onChanged: (val) {
                  qty = val as int;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Payment',
                  hintText: 'Enter the payment',
                ),
                onChanged: (val) {
                  payment = val as double;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'Enter the description',
                ),
                onChanged: (val) {
                  desc = val;
                },
              ),
              TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    final act = Activity(
                        shgId: 4,
                        aid: 0,
                        quantity: qty ?? 0,
                        title: title ?? "",
                        amt: payment ?? 0,
                        status: OrderStatus.inProgress);
                    MessagesService().sendSMS(act.toMap(), '8320429835');
                  },
                  child: Text('Submit')),
            ],
          )),
    );
  }
}
