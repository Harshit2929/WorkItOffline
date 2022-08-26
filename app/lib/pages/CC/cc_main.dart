import 'package:flutter/material.dart';

class CCMain extends StatelessWidget {
  const CCMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Cluster Name : XYZ'),
          Text("Cluster Code : 123456"),
          Text("Raipur, Chhatishgarh"),
          Text("CC: ABC Person"),
        ],
      ),
    );
  }
}
