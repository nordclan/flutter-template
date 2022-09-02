import 'package:flutter/material.dart';
import 'package:sample_project/src/res/theme/text_style.dart';

/// Heading for some sections like [ListSlider]
class SectionHeading extends StatefulWidget {
  final String sliderTitle;
  final String more;
  final Function()? detailFunc;
  const SectionHeading(
      {Key? key,
      required this.sliderTitle,
      required this.more,
      required this.detailFunc})
      : super(key: key);

  @override
  State<SectionHeading> createState() => _SectionHeadingState();
}

class _SectionHeadingState extends State<SectionHeading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        children: [
          Text(
            widget.sliderTitle,
            style: bold16,
          ),
          // Expanded(
          //   child: Container(),
          // ),
          // GestureDetector(
          //   onTap: widget.detailFunc,
          //   child: Text(
          //     widget.more,
          //     style: textRegular14Grey,
          //   ),
          // ),
        ],
      ),
    );
  }
}
