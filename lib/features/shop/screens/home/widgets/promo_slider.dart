// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:si_store/features/shop/controllers/home_controller.dart';
import 'package:si_store/utils/constants/colors.dart';
import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/s_rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class SPromoSlider extends StatelessWidget {
  const SPromoSlider({
    super.key,
    required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banner.map((url) => SRoundedImage(imageUrl: url)).toList(),
          options: CarouselOptions(
              viewportFraction: 1.0,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
        ),
        SizedBox(
          height: SSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banner.length; i++)
                SCircularContainer(
                  width: 40,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  background: (controller.carouselCurrentIndex.value == i)
                      ? SColors.primary
                      : SColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}

// SRoundedImage(imageUrl: SImagesString.sliderProduct1,),
