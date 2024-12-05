import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:si_store/features/authentication/controller/onboarding_controller.dart';
import 'package:si_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:si_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:si_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:si_store/utils/constants/colors.dart';
import 'package:si_store/utils/constants/images_string.dart';
import 'package:si_store/utils/constants/text_string.dart';
import 'package:si_store/utils/device/device_utility.dart';
import 'package:si_store/utils/helpers/helper_formatter.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable pages
          PageView(
            controller : controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [

              OnboardingPage(
                image: SImagesString.onboardingImage1,
                title: STextString.onBoardingTittle1,
                subtitle: STextString.onBoardingSubTittle1,
              ),
              OnboardingPage(
                image: SImagesString.onboardingImage2,
                title: STextString.onBoardingTittle2,
                subtitle: STextString.onBoardingSubTittle2,
              ),
              OnboardingPage(
                image: SImagesString.onboardingImage3,
                title: STextString.onBoardingTittle3,
                subtitle: STextString.onBoardingSubTittle3,
              ),
            ],
          ),

          //skip button
          OnboardingSkip(),

          // Dot Smooth Navigation Indicator
          OnboardingDotNavigation(),

          OnboardingNextButton()
        ],
      ),
    );
  }
}

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFormatter.isDarkMode(context);
    return Positioned(
      right: SSizes.defaultSpace,
      bottom: SDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: OnboardingController.instance.nextPage,
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: dark ? SColors.primary : Colors.black),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
