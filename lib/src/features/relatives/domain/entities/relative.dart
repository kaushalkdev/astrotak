import 'birth_details.dart';
import 'birth_place.dart';

class Relative {
  final String uuid;
  final String relation;
  final String firstName;
  final String? middleName;
  final String lastName;
  final String fullName;
  final String gender;
  final int relationId;
  final String dateAndTimeOfBirth;
  final BirthDetails birthDetails;
  final BirthPlace birthPlace;

  Relative({
    required this.uuid,
    required this.relation,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.gender,
    required this.dateAndTimeOfBirth,
    required this.birthDetails,
    required this.birthPlace,
    required this.relationId,
    this.middleName,
  });

  Relative copyWith({
    String? firstName,
    String? lastName,
    String? middleName,
    String? relation,
    String? fullName,
    String? gender,
    String? dateAndTimeOfBirth,
    BirthDetails? birthDetails,
    BirthPlace? birthPlace,
  }) {
    return Relative(
        uuid: uuid,
        relation: relation ?? this.relation,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        fullName: fullName ?? this.fullName,
        gender: gender ?? this.gender,
        dateAndTimeOfBirth: dateAndTimeOfBirth ?? this.dateAndTimeOfBirth,
        birthDetails: birthDetails ?? this.birthDetails,
        birthPlace: birthPlace ?? this.birthPlace,
        relationId: relationId);
  }
}
