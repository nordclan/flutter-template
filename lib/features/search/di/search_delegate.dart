import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_project/assets/colors/app_colors.dart';
import 'package:sample_project/features/main/repository/tour.dart';
import 'package:sample_project/src/res/theme/text_style.dart';

/// Main search
class SeachPlaces extends SearchDelegate {
  final List<TourModel> toursList;
  final List<TourModel> suggestionList;

  SeachPlaces({
    required this.suggestionList,
    required this.toursList,
  });

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: const Icon(
          Icons.clear,
          color: AppColors.baseBlue,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: const Icon(
        Icons.arrow_back,
        color: AppColors.baseBlue,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<TourModel> placeList = toursList
        .where(
          (place) => place.name.toLowerCase().contains(
                query.toLowerCase(),
              ),
        )
        .toList();

    return ListView.builder(
      padding: const EdgeInsets.only(top: 20),
      itemCount: placeList.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.of(context).pop();
          context.go(
            '/main/detail/${placeList[index].id}',
            extra: placeList[index],
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Text(
            placeList[index].name,
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<TourModel> suggestions = suggestionList
        .where(
          (place) => place.name.toLowerCase().contains(
                query.toLowerCase(),
              ),
        )
        .toList();

    return ListView.builder(
      padding: const EdgeInsets.only(top: 20),
      itemCount: suggestions.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.of(context).pop();
          context.go(
            '/main/detail/${suggestions[index].id}',
            extra: suggestions[index],
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Text(
            suggestions[index].name,
            style: textRegular18,
          ),
        ),
      ),
    );
  }
}
