import 'package:app/constants/env.dart';
import 'package:flutter/material.dart';

class CCActivities extends StatelessWidget {
  String? title, product, unique, desc ;
  int? qty;
  double? payment;

  CCActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget> [
            Text(
              "Assign new activity",
              style:Theme.of(context).textTheme.headline4
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'User Name',
                hintText: 'Enter Your Name',
              ),
              onChanged: (val){
                title = val;
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Product Name',
                hintText: 'Enter the product name',
              ),
              onChanged: (val){
                product = val;
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Quantity',
                hintText: 'Enter the required quantity',
              ),
              onChanged: (val){
                qty = val as int;
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Payment',
                hintText: 'Enter the payment',
              ),
              onChanged: (val){
                payment = val as double;
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Description',
                hintText: 'Enter the description',
              ),
              onChanged: (val){
                desc = val;
              },
            )
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () { },
              child: Text('Submit')
            ),
          ],
        )
      ),
    );
  }
}
