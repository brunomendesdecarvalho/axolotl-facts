import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  // ====================================================
  // Base colors
  // ====================================================

  static const primary = const Color(0xFFFB406F);
  static const primaryDark = const Color(0xFFB34776);
  static final primary_04 = primary.withOpacity(.04);

  static const secondary = const Color(0xFFF07380);
  static final secondary_04 = secondary.withOpacity(.04);

  // ====================================================
  // Alerts
  // ====================================================
  static const infoLight = const Color(0xFF009AEB);
  static const info = const Color(0xFF008AD2);
  static const infoDark = const Color(0xFF0079B8);

  static const successLight = const Color(0xFF40CF54);
  static const success = const Color(0xFF38B449);
  static const successDark = const Color(0xFF309C3F);
  static final success_04 = success.withOpacity(.04);

  static const warningLight = const Color(0xFFFFE064);
  static const warning = const Color(0xFFFFC73E);
  static const warningDark = const Color(0xFFE5B338);

  static const dangerLight = const Color(0xFFFF584C);
  static const danger = const Color(0xFFF44336);
  static const dangerDark = const Color(0xFFDB3C31);
  static final danger_04 = danger.withOpacity(.04);

  static const black = Color(0xFF000000);
  static final black_88 = black.withOpacity(.88);
  static final black_56 = black.withOpacity(.56);
  static final black_40 = black.withOpacity(.40);
  static final black_16 = black.withOpacity(.16);
  static final black_04 = black.withOpacity(.04);
}
