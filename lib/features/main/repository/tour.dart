import 'package:sample_project/src/res/assets.dart';

/// Tour model for main and detail pages
class TourModel {
  int id;
  String name;
  String place;
  int price;
  String? imgLink;
  int days;
  num score;
  int peoples;
  String type;
  String description;

  TourModel({
    required this.id,
    required this.name,
    required this.place,
    required this.price,
    this.imgLink,
    required this.days,
    required this.score,
    required this.peoples,
    required this.type,
    required this.description,
  });

  factory TourModel.fromJson(Map<String, dynamic> json) => TourModel(
        id: json['id'],
        name: json['name'],
        place: json['place'],
        price: json['price'],
        imgLink: json['imgLink'],
        days: json['days'],
        score: json['score'],
        peoples: json['peoples'],
        type: json['type'],
        description: json['description'],
      );

  Map<String, String> toJson() => {
        'id': id.toString(),
        'name': name,
        'place': place,
        'price': price.toString(),
        'imgLink': imgLink.toString(),
        'days': days.toString(),
        'score': score.toString(),
        'peoples': peoples.toString(),
        'type': type,
        'description': description,
      };

  @override
  String toString() =>
      'TourModel message: (id: $id, name: $name, place: $place, price: $price, imgLink: $imgLink, days: $days, score: $score, peoples: $peoples, type: $type, description: $description)';
}

List<TourModel> toursList = [
  TourModel(
    id: 1,
    name: 'Mountain trip',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    place: 'Mountain',
    imgLink: AppImgAssests.pic1,
    price: 300,
    days: 10,
    peoples: 4,
    score: 4.7,
    type: 'mountains',
  ),
  TourModel(
    id: 2,
    name: 'Ocean tour',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    place: 'Ocean',
    imgLink: AppImgAssests.pic2,
    price: 200,
    days: 7,
    peoples: 6,
    score: 4.4,
    type: 'ocean',
  ),
  TourModel(
    id: 3,
    name: 'City tour',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    place: 'City',
    imgLink: AppImgAssests.pic3,
    price: 350,
    days: 10,
    peoples: 4,
    score: 4.8,
    type: 'city',
  ),
  TourModel(
    id: 4,
    name: 'Forest tour',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    place: 'Forest',
    imgLink: AppImgAssests.pic4,
    price: 600,
    days: 17,
    peoples: 8,
    score: 4.5,
    type: 'forest',
  ),
  TourModel(
    id: 5,
    name: 'Sea tour',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    place: 'Sea',
    imgLink: AppImgAssests.pic3,
    price: 300,
    days: 13,
    peoples: 10,
    score: 4.2,
    type: 'ocean',
  ),
  TourModel(
    id: 6,
    name: 'Field tour',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    place: 'Field',
    imgLink: AppImgAssests.pic1,
    price: 300,
    days: 17,
    peoples: 14,
    score: 3.9,
    type: 'city',
  ),
];
