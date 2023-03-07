import 'package:actual/common/utils/data_utils.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../common/const/data.dart';

part 'restaurant_model.g.dart';

enum RestaurantPriceRange {
  expensive,
  medium,
  cheap,
}
@JsonSerializable()
class RestaruantModel {
  final String id;
  final String name;
  @JsonKey(fromJson: DataUtils.pathToUrl)
  final String thumbUrl;
  final List<String> tags;
  final RestaurantPriceRange priceRange;
  final double ratings;
  final int ratingsCount;
  final int deliveryTime;
  final int deliveryFee;


  RestaruantModel({
    required this.id,
    required this.name,
    required this.thumbUrl,
    required this.tags,
    required this.priceRange,
    required this.ratings,
    required this.ratingsCount,
    required this.deliveryTime,
    required this.deliveryFee,
  });

  factory RestaruantModel.fromJson(Map<String,dynamic> json) => _$RestaruantModelFromJson(json);

  Map<String,dynamic> toJson() => _$RestaruantModelToJson(this);


  // static pathToUrl(String value){
  //   return 'http://$ip$value';
  // }

  // factory RestaruantModel.fromJson({
  //   required Map<String, dynamic> json,
  // }) {
  //   return RestaruantModel(
  //     id: json['id'],
  //     name: json['name'],
  //     thumbUrl: 'http://$ip${json['thumbUrl']}',
  //     tags: List<String>.from(json['tags']),
  //     priceRange: RestaurantPriceRange.values
  //         .firstWhere((e) => e.name == json['priceRange']),
  //     ratings: json['ratings'],
  //     ratingsCount: json['ratingsCount'],
  //     deliveryTime: json['deliveryTime'],
  //     deliveryFee: json['deliveryFee'],
  //   );
  // }
}
