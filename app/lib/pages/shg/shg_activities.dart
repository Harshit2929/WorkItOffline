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
  Future<Response> future =
      RequestService.get("$BASE_URL/activities/4", {}, true);

  @override
  void initState() {
    super.initState();
    getAllOrders();
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
