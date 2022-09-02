import 'package:flutter/material.dart';
import 'package:sample_project/assets/colors/app_colors.dart';
import 'package:sample_project/src/res/theme/text_style.dart';

/// Card for [ListSlider]
class CardVertical extends StatefulWidget {
  final String name;
  final String location;
  final int price;
  final String imgPath;
  final String tourType;
  final Function()? cardFunc;
  const CardVertical({
    Key? key,
    required this.name,
    required this.price,
    required this.imgPath,
    required this.cardFunc,
    required this.location,
    required this.tourType,
  }) : super(key: key);

  @override
  State<CardVertical> createState() => _CardVerticalState();
}

class _CardVerticalState extends State<CardVertical> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.cardFunc,
      child: SizedBox(
        width: 130,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.lightGray,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(5),
                  bottom: Radius.circular(0),
                ),
                child: Image.asset(
                  widget.imgPath,
                  width: double.infinity,
                  height: 75,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      widget.name,
                      style: textRegular,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      widget.location,
                      style: textRegular14Grey,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          _iconWidget(widget.tourType),
                          size: 20,
                          color: AppColors.baseBlue,
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Text(
                          '\$${widget.price}',
                          style: textMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  IconData _iconWidget(String type) {
    switch (type) {
      case 'city':
        {
          return Icons.location_city;
        }
      case 'ocean':
        {
          return Icons.waves;
        }
      case 'mountains':
        {
          return Icons.elderly_woman;
        }
      default:
        return Icons.person;
    }
  }
}
