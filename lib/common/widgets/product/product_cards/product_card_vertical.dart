import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:si_store/common/widgets/images/s_rounded_image.dart';
import 'package:si_store/utils/constants/colors.dart';
import 'package:si_store/utils/constants/images_string.dart';
import 'package:si_store/utils/constants/sizes.dart';
import 'package:si_store/utils/helpers/helper_formatter.dart';
import '../../../../features/shop/screens/home/widgets/s_rounded_container.dart';
import '../../icons/t_circular_icons.dart';
import '../../shadow/s_shadow_style.dart';
import '../../texts/product_title_text.dart';

class SProductCardVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFormatter.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          boxShadow: [SShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(SSizes.productImageRadius),
          color: SHelperFormatter.isDarkMode(context)
              ? SColors.darkGrey
              : SColors.white,
        ),
        child: Column(
          children: [
            SRoundedContainer(
              Height: 180,
              Padding: EdgeInsets.all(SSizes.sm),
              backgroundColor: dark ? SColors.dark : SColors.light,
              child: Stack(
                children: [
                  SRoundedImage(
                    imageUrl: SImagesString.product3,
                    applyImageRadius: true,
                    height: 180,
                  ),
                  Positioned(
                    top: 6,
                    left: 4,
                    child: SRoundedContainer(
                      radius: SSizes.sm,
                      backgroundColor: Colors.yellow.withOpacity(0.8),
                      Padding: EdgeInsets.symmetric(
                          horizontal: SSizes.sm, vertical: SSizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: SColors.black),
                      ),
                      Height: 20,
                    ),
                  ),

                  // Like button
                  Positioned(
                      top: -8,
                      right: -4,
                      child: TCircularIcon(
                        dark: dark,
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: SSizes.spaceBtwItems / 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: SSizes.sm),
              child: Column(
                children: [
                  SProductTitleText(
                      title: "Brown shoes with great sole",
                      maxLine: 2,
                      smallSize: true),
                  Padding(
                    padding: const EdgeInsets.only(left: SSizes.xs),
                    child: Row(
                      children: [
                        Text("Nike",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: Theme.of(context).textTheme.labelMedium),
                        SizedBox(
                          width: SSizes.spaceBtwItems / 2,
                        ),
                        Icon(
                          Iconsax.verify5,
                          color: SColors.primary,
                          size: SSizes.iconsXs,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$35.5",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      SizedBox(
                        width: SSizes.spaceBtwItems / 2,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: SColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(SSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(SSizes.productImageRadius)),
                        ),
                        child: SizedBox(
                          width: SSizes.lg * 1.5,
                          height: SSizes.lg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: SColors.white,
                              size: SSizes.lg,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
