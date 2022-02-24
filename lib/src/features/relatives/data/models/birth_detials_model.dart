import 'package:astrotak/src/features/relatives/domain/entities/birth_details.dart';

class BirthDetailsModel extends BirthDetails {
  BirthDetailsModel(
      {required int dobYear,
      required int dobDay,
      required int dobMonth,
      required String meridiem,
      required int tobHour,
      required int tobMin})
      : super(
          dobMonth: dobMonth,
          dobYear: dobYear,
          dobDay: dobDay,
          meridiem: meridiem,
          tobHour: tobHour,
          tobMin: tobMin,
        );

  static BirthDetailsModel fromJson(Map<String, dynamic> json) {
    return BirthDetailsModel(
        dobYear: json['dobYear'],
        dobDay: json['dobDay'],
        dobMonth: json['dobMonth'],
        meridiem: json['meridiem'],
        tobHour: json['tobHour'],
        tobMin: json['tobMin']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dobYear'] = dobYear;
    data['dobMonth'] = dobMonth;
    data['dobDay'] = dobDay;
    data['tobHour'] = tobHour;
    data['tobMin'] = tobMin;
    data['meridiem'] = meridiem;
    return data;
  }
}
