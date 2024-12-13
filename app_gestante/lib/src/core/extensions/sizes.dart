import 'package:flutter/material.dart';

mixin Sizes<T extends StatefulWidget> on State<T> {
  double get screenWidth => MediaQuery.sizeOf(context).width;
  double get screenHeight => MediaQuery.sizeOf(context).height;
}
