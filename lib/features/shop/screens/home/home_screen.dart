import 'package:flutter/material.dart';
import 'package:si_store/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:si_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:si_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:si_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:si_store/utils/constants/images_string.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_texts.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SPrimaryHeaderContainer(
              child: Column(
                children: [
                  SHomeAppbar(),
                  SizedBox(height: SSizes.spaceBetweenSections),
                  SSearchContainer(text: "Search in Store"),
                  SizedBox(height: SSizes.spaceBetweenSections),
                  Padding(
                    padding: EdgeInsets.only(left: SSizes.defaultSpace),
                    child: Column(
                      children: [
                        SSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: SSizes.spaceBtwItems),
                        SizedBox(
                          height: 96,
                          child: SHomeCategories(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  SPromoSlider(banner: [SImagesString.sliderProduct1,SImagesString.sliderProduct2,SImagesString.sliderProduct3]),
                  SizedBox(height: SSizes.spaceBetweenSections),

                  SGridLayout(itemCount: 4, itemBuilder: (BuildContext , int )=>SProductCardVertical(),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SGridLayout extends StatelessWidget {
  const SGridLayout({
    super.key, required this.itemCount, this.mainAxisExtent = 250, required this.itemBuilder,
  });
 final int itemCount;
 final double? mainAxisExtent;
 final Widget? Function(BuildContext,int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: SSizes.gridViewSpacing,
        crossAxisSpacing: SSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
