import 'package:flutter/material.dart';

class SProductTitleText extends StatelessWidget {
  const SProductTitleText({
    super.key,
    required this.title,
    required this.maxLine,
    required this.smallSize,
    this.textAlign,
  });

  final String title;
  final int maxLine;
  final bool smallSize;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize
          ? Theme.of(context).textTheme.bodyMedium
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      textAlign: textAlign,
    );
  }
}
// "Brown shoes with great sole"
// Theme.of(context).textTheme.labelSmall
