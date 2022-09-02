import 'package:flutter/material.dart';
import 'package:sample_project/assets/colors/app_colors.dart';
import 'package:sample_project/features/main/di/main_screen_vm.dart';
import 'package:sample_project/features/main/repository/tour.dart';
import 'package:sample_project/features/search/di/search_delegate.dart';
import 'package:sample_project/src/res/assets.dart';
import 'package:sample_project/src/ui/kit/card_big.dart';
import 'package:sample_project/src/ui/kit/card_vertical.dart';
import 'package:sample_project/src/ui/kit/list_slider.dart';
import 'package:sample_project/src/ui/kit/main_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sample_project/src/ui/kit/search_btn.dart';
import 'package:sample_project/src/ui/kit/section_heading.dart';
import 'package:go_router/go_router.dart';

/// Main screen
class AppMainScreen extends StatefulWidget {
  final MainScreenVM vm;
  const AppMainScreen({
    Key? key,
    required this.vm,
  }) : super(key: key);

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  MainScreenVM get vm => widget.vm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        userName: 'Alexandra',
        userPic: AppImgAssests.profile,
      ),
      body: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 16,
              ),
              child: SearchBtn(
                  title: AppLocalizations.of(context)!.search,
                  func: () {
                    showSearch(
                      context: context,
                      delegate: SeachPlaces(
                        suggestionList: toursList,
                        toursList: toursList,
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 15),
            SectionHeading(
              sliderTitle: AppLocalizations.of(context)!.popularTitle,
              more: AppLocalizations.of(context)!.popularMore,
              detailFunc: null,
            ),
            const SizedBox(
              height: 20,
            ),
            ListSlider(
              scrollHeight: 180,
              scrollWidth: double.infinity,
              children: toursList
                  .map(
                    (item) => CardVertical(
                      cardFunc: () =>
                          context.go('/main/detail/${item.id}', extra: item),
                      name: item.name,
                      price: item.price,
                      imgPath: item.imgLink!,
                      location: item.place,
                      tourType: item.type,
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(
              height: 50,
            ),
            SectionHeading(
              sliderTitle: AppLocalizations.of(context)!.recomendedTitle,
              more: AppLocalizations.of(context)!.recomendedMore,
              detailFunc: null,
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: toursList
                  .map(
                    (item) => Column(
                      children: [
                        CardBig(
                          name: item.name,
                          place: item.place,
                          price: item.price,
                          imageLink: item.imgLink!,
                          days: item.days,
                          score: item.score.toDouble(),
                          peoples: item.peoples,
                          detailFunc: () => context
                              .go('/main/detail/${item.id}', extra: item),
                        ),
                        const Divider(
                          height: 60,
                          indent: 16,
                          endIndent: 16,
                        )
                      ],
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
