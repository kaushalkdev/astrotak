import 'package:astrotak/src/features/relatives/data/models/birth_detials_model.dart';
import 'package:astrotak/src/features/relatives/data/models/birth_place_model.dart';
import 'package:astrotak/src/features/relatives/domain/entities/relative.dart';

class RelativeModel extends Relative {
  RelativeModel({
    required BirthDetailsModel birthDetails,
    required BirthPlaceModel birthPlace,
    required String firstName,
    required String dateAndTimeOfBirth,
    required String fullName,
    required String lastName,
    required String gender,
    required String relation,
    required String uuid,
    required int relationId,
    String? middleName,
  }) : super(
            birthDetails: birthDetails,
            birthPlace: birthPlace,
            dateAndTimeOfBirth: dateAndTimeOfBirth,
            firstName: firstName,
            fullName: fullName,
            gender: gender,
            lastName: lastName,
            relation: relation,
            uuid: uuid,
            middleName: middleName,
            relationId: relationId);

  RelativeModel fromJson(Map<String, dynamic> json) {
    return RelativeModel(
      birthDetails: BirthDetailsModel.fromJson(json['birthDetails']),
      birthPlace: BirthPlaceModel.fromJson(json['birthPlace']),
      firstName: json['firstName'],
      dateAndTimeOfBirth: json['dateAndTimeOfBirth'],
      fullName: json['fullName'],
      lastName: json['lastName'],
      middleName: json['middleName'],
      gender: json['gender'],
      relation: json['relation'],
      uuid: json['uuid'],
      relationId: json['relationId'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['relation'] = relation;
    data['relationId'] = relationId;
    data['firstName'] = firstName;
    data['middleName'] = middleName;
    data['lastName'] = lastName;
    data['fullName'] = fullName;
    data['gender'] = gender;
    data['dateAndTimeOfBirth'] = dateAndTimeOfBirth;
    data['birthDetails'] = (birthDetails as BirthDetailsModel).toJson();
    data['birthPlace'] = (birthPlace as BirthPlaceModel).toJson();

    return data;
  }
}
