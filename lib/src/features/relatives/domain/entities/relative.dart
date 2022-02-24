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
}
