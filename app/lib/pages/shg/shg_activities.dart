import 'package:app/constants/env.dart';
import 'package:app/database/orders.database.dart';
import 'package:app/services/request.service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../models/order.dart';

class SHGActivities extends StatefulWidget {
  const SHGActivities({Key? key}) : super(key: key);

  @override
  State<SHGActivities> createState() => _SHGActivitiesState();
}

class _SHGActivitiesState extends State<SHGActivities> {
  late final List<Activity> activities;

  late final Future<Response> future;

  @override
  void initState() {
    super.initState();
    getAllOrders();

    // RequestService.get("$BASE_URL/activity/2", {}, false);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Response>(
      builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          print(snapshot.error);
          print(snapshot.data?.statusCode);
          print("THere is some error");
        }
        return Container(
          child: Center(
            child: Text(snapshot.data?.data ?? "null data"),
          ),
        );
      },
    );
  }
}
