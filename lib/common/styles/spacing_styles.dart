import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';

class SpacingStyles {
    static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
      top: SSizes.appBarHeight,
      bottom: SSizes.defaultSpace,
      left: SSizes.defaultSpace,
      right: SSizes.defaultSpace,
    );
}