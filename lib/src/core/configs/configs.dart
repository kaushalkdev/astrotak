import 'package:astrotak/src/core/constants/flavors.dart';

class Configs {
  final String baseUrl;
  final Flavor flavor;
  static Configs? i;

  factory Configs({required String baseUrl, required Flavor flavor}) {
    return i ??= Configs._privateConstructor(baseUrl, flavor);
  }

  Configs._privateConstructor(this.baseUrl, this.flavor);
}
