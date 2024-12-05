import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_formatter.dart';

class SVerticalImageText extends StatelessWidget {
  const SVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    required this.textColor,
    this.onTap,
    this.backgroundColor,
  });

  final String title, image;
  final VoidCallback? onTap;
  final Color textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: SSizes.sm),
            height: 60,
            width: 60,
            padding: EdgeInsets.all(SSizes.sm),
            decoration: BoxDecoration(
              color: backgroundColor ??
                  (SHelperFormatter.isDarkMode(context)
                      ? SColors.dark
                      : SColors.light),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: (SHelperFormatter.isDarkMode(context)
                    ? SColors.light
                    : SColors.dark),
              ),
            ),
          ),
          SizedBox(height: SSizes.spaceBtwItems),
          SizedBox(
            width: 60,
            child: Padding(
              padding: const EdgeInsets.only(left: SSizes.sm),
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// SImagesString.sportsIcon
// "Shopping Category"
// SColors.white,
// Colors.white
