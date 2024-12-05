import 'package:flutter/cupertino.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SRoundedContainer extends StatelessWidget {
  SRoundedContainer(
      {super.key,
      this.Width,
      required this.Height,
      required this.Padding,
      this.Margin,
      this.backgroundColor = SColors.white,
      this.borderColor = SColors.borderPrimary,
      this.radius = SSizes.cardRadiusLg,
      this.showBorder = false,
      this.child});

  final double? Width;
  final double Height;
  final EdgeInsetsGeometry Padding;
  final EdgeInsetsGeometry? Margin;
  final Color backgroundColor;
  final Color borderColor;
  final double radius;
  final bool showBorder;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Width,
      height: Height,
      padding: Padding,
      margin: Margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor, width: 1) : null,
      ),
      child: child,
    );
  }
}
