import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:si_store/features/authentication/controller/onboarding_controller.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_formatter.dart';

class OnboardingDotNavigation extends StatelessWidget {
  OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    final dark = SHelperFormatter.isDarkMode(context);

    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: SSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController, // PageController
        onDotClicked: controller.doNavigatorClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? SColors.light : SColors.dark,
          dotHeight: 6,
        ), // your preferred effect
      ),
    );
  }
}
