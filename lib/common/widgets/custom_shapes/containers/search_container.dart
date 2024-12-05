import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_formatter.dart';

class SSearchContainer extends StatelessWidget {
  const SSearchContainer({
    super.key,
    required this.text,
    this.showBorder = true,
    this.showBackground = true,
    this.icon = Iconsax.search_normal,
  });

  final String text;
  final IconData icon ;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFormatter.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace),
      child: Container(
        width: SDeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(SSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
              ? SColors.dark
              : SColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(SSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: SColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: SColors.darkGrey,
            ),
            SizedBox(
              width: SSizes.spaceBtwItems,
            ),
            Text(text,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(color: SColors.darkGrey)),
          ],
        ),
      ),
    );
  }
}
