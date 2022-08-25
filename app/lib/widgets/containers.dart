import 'package:flutter/material.dart';

class RoundedGrayContainer extends StatelessWidget {
  static const _radius = 50.0;
  final Widget? child;
  final double? width, height;

  const RoundedGrayContainer({
    Key? key,
    this.child,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(230, 230, 230, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(_radius),
        ),
      ),
      child: child,
    );
  }
}
