import 'package:flutter/material.dart';

class ListSlider extends StatefulWidget {
  final List<Widget> children;
  final double scrollHeight;
  final double scrollWidth;
  const ListSlider({
    Key? key,
    required this.children,
    required this.scrollHeight,
    required this.scrollWidth,
  }) : super(key: key);

  @override
  State<ListSlider> createState() => _ListSliderState();
}

class _ListSliderState extends State<ListSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
      ),
      child: Column(
        children: [
          SizedBox(
            height: widget.scrollHeight,
            width: widget.scrollWidth,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return widget.children[index];
              },
              itemCount: widget.children.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 15,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
