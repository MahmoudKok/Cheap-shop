import 'package:flutter/material.dart';
import 'main.dart';

const Color? maincolor = Color(0xFFE88F47);
const Color? backcolor = Colors.white;
const Color? ltextcolor = Color(0xFF7D8085);
const Color? lbigtextcolor = Color(0xFF232931);
const Color? lbackcolor = Color(0xFFFFFFFF);

const Color? dtextcolor = Color(0xFFA0A1A3);
const Color? dbigtextcolor = Color(0xFFffffff);
const Color? dbackcolor = Color(0xFF222222);

Color? turnm(mode) {
  if (mode)
    return Colors.white;
  else
    return Colors.black;
}
