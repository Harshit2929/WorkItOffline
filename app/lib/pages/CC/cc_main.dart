import 'package:flutter/material.dart';

class CCMain extends StatelessWidget {
  const CCMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text('Cluster Name : XYZ'),
          Text("Cluster Code : 123456"),
          Text("Raipur, Chhatishgarh"),
          Text("CC: ABC Person"),
        ],
      ),
    );
  }
}
