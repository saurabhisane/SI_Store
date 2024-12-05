import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:si_store/features/authentication/controller/onboarding_controller.dart';import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SDeviceUtils.getAppbarHeight(),
      right: SSizes.defaultSpace,
      child: TextButton(
        onPressed: OnboardingController.instance.skipPage,
        child: Text(
          "Skip",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
