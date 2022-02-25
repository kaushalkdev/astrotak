import 'package:astrotak/src/app.dart';
import 'package:astrotak/src/core/apis/app_apis.dart';

import 'package:astrotak/src/core/configs/configs.dart';
import 'package:astrotak/src/core/constants/flavors.dart';
import 'package:flutter/material.dart';

import 'src/core/services/di/locator.dart';

void main() {
  // init configs
  Configs(baseUrl: AppApis.baseUrl, flavor: Flavor.stage);

  // initialising service locator for dependency injection
  initServiceLocator();

  runApp(const AstroApp());
}
