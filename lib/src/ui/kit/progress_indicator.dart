import 'package:flutter/material.dart';

/// Custom app progress indicator
class AppCircularProgressIndicator extends StatelessWidget {
  final double side;

  const AppCircularProgressIndicator({
    Key? key,
    this.side = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: side,
      height: side,
      child: CircularProgressIndicator(
        strokeWidth: side / 10,
      ),
    );
  }
}
