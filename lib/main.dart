import 'package:astrotak/src/app.dart';
import 'package:astrotak/src/core/apis/app_apis.dart';

import 'package:astrotak/src/core/configs/configs.dart';
import 'package:astrotak/src/core/constants/flavors.dart';
import 'package:flutter/material.dart';

void main() {
  // init configs
  Configs(
    baseUrl: AppApis.baseUrl,
    flavor: Flavor.stage,
  );

  runApp(const AstroApp());
}
