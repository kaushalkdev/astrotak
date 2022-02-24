import 'package:astrotak/src/features/relatives/domain/entities/birth_place.dart';

class BirthPlaceModel extends BirthPlace {
  BirthPlaceModel({
    required String placeId,
    required String placeName,
  }) : super(
          placeId: placeId,
          placeName: placeName,
        );

  static BirthPlaceModel fromJson(Map<String, dynamic> json) {
    return BirthPlaceModel(
        placeId: json['placeId'], placeName: json['placeName']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['placeName'] = placeName;
    data['placeId'] = placeId;
    return data;
  }
}
