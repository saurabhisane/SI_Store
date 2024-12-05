import 'package:flutter/material.dart';

class SSectionHeading extends StatelessWidget {
  const SSectionHeading({
    super.key,
    this.textColor,
    required this.title,
    this.buttonTitle="View all",
    this.onPressed,
    this.showActionButton = true,
  });
  final Color? textColor;
  final String title, buttonTitle;
  final VoidCallback? onPressed;
  final bool showActionButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
