import 'package:flutter/material.dart';

/// Chip in [CardBig] and [DeatailPage]
class MiniInfo extends StatelessWidget {
  final num count;
  final String description;
  final IconData iconData;
  final Color iconColor;
  const MiniInfo({
    Key? key,
    required this.count,
    required this.description,
    required this.iconData,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 25,
          color: iconColor,
        ),
        const SizedBox(
          width: 5,
        ),
        Text('$count $description'),
      ],
    );
  }
}
