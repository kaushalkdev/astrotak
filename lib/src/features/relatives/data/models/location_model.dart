import 'package:astrotak/src/features/relatives/domain/entities/location.dart';

class LocationModel extends Location {
  LocationModel({
    required String placeId,
    required String placeName,
  }) : super(
          placeId: placeId,
          placeName: placeName,
        );

  static LocationModel fromJson(Map<String, dynamic> json) {
    return LocationModel(
        placeId: json['placeId'], placeName: json['placeName']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['placeName'] = placeName;
    data['placeId'] = placeId;
    return data;
  }
}
