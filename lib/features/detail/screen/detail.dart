import 'package:flutter/material.dart';
import 'package:sample_project/assets/colors/app_colors.dart';
import 'package:sample_project/features/main/repository/tour.dart';
import 'package:sample_project/src/res/theme/text_style.dart';
import 'package:sample_project/src/ui/kit/article_text.dart';
import 'package:sample_project/src/ui/kit/mini_info.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DeatailPage extends StatefulWidget {
  final TourModel data;
  const DeatailPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<DeatailPage> createState() => _DeatailPageState();
}

class _DeatailPageState extends State<DeatailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 160,
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.data.name),
              centerTitle: true,
              background: Image.asset(
                widget.data.imgLink!,
                fit: BoxFit.fill,
                color: Colors.white.withOpacity(0.85),
                colorBlendMode: BlendMode.modulate,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MiniInfo(
                            count: widget.data.peoples,
                            description: AppLocalizations.of(context)!.peoples,
                            iconData: Icons.people,
                            iconColor: AppColors.black,
                          ),
                          MiniInfo(
                            count: widget.data.days,
                            description: AppLocalizations.of(context)!.days,
                            iconData: Icons.lock_clock,
                            iconColor: AppColors.baseBlue,
                          ),
                          MiniInfo(
                            count: widget.data.score,
                            description: '',
                            iconData: Icons.star,
                            iconColor: AppColors.gold,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.data.place,
                            style: textRegular24,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Pay \$${widget.data.price}'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ArticleText(
                        text: widget.data.description,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ArticleText(
                        text: widget.data.description,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ArticleText(
                        text: widget.data.description,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
