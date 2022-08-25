import 'package:flutter/material.dart';

class ActiveButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;

  const ActiveButton({Key? key, required this.text, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: ElevatedButton(
        onPressed: callback,
        child: Text(text),
      ),
    );
  }
}
