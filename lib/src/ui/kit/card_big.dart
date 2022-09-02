import 'package:flutter/material.dart';
import 'package:sample_project/assets/colors/app_colors.dart';
import 'package:sample_project/src/res/theme/text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sample_project/src/ui/kit/mini_info.dart';

class CardBig extends StatefulWidget {
  final Function()? detailFunc;
  final String imageLink;
  final String name;
  final String place;
  final int peoples;
  final int price;
  final int days;
  final double score;
  const CardBig({
    Key? key,
    required this.imageLink,
    required this.detailFunc,
    required this.name,
    required this.place,
    required this.peoples,
    required this.days,
    required this.score,
    required this.price,
  }) : super(key: key);

  @override
  State<CardBig> createState() => _CardBigState();
}

class _CardBigState extends State<CardBig> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.detailFunc,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    widget.imageLink,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 130,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: '${widget.name}\n',
                    style: textRegular24,
                    children: [
                      TextSpan(
                        text: widget.place,
                        style: textRegular16Grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '\$${widget.price}',
                  style: textRegular24,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MiniInfo(
                  count: widget.peoples,
                  description: AppLocalizations.of(context)!.peoples,
                  iconData: Icons.people,
                  iconColor: AppColors.black,
                ),
                MiniInfo(
                  count: widget.days,
                  description: AppLocalizations.of(context)!.days,
                  iconData: Icons.lock_clock,
                  iconColor: AppColors.baseBlue,
                ),
                MiniInfo(
                  count: widget.score,
                  description: '',
                  iconData: Icons.star,
                  iconColor: AppColors.gold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
