import 'package:flutter/widgets.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

const devices = [
  Device(
    name: 'phone',
    size: Size(390, 844),
    safeArea: EdgeInsets.fromLTRB(0, 47, 0, 34),
    devicePixelRatio: 2,
  ),
  Device(
    name: 'tablet',
    size: Size(820, 1180),
    devicePixelRatio: 2,
  ),
  Device(
    name: 'laptop',
    size: Size(1366, 768),
    devicePixelRatio: 1.5, // higher causes invalid 0.00% pixel diff errors
  ),
];
