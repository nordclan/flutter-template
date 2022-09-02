import 'package:flutter/material.dart';
import 'package:sample_project/src/res/theme/text_style.dart';

class ArticleText extends StatelessWidget {
  final String text;
  const ArticleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        children: [
          const WidgetSpan(
            child: SizedBox(
              width: 30,
            ),
          ),
          TextSpan(
            text: text,
            style: article18,
          )
        ],
      ),
    );
  }
}
