import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:si_store/features/authentication/controller/sign_up/signup_controller.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../utils/helpers/helper_formatter.dart';

class STermsAndConditionsCheckbox extends StatelessWidget {
  const STermsAndConditionsCheckbox({
    super.key,
    // required this.dark,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = SHelperFormatter.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Obx(
          () => Checkbox(
            value: controller.privacyPolicy.value,
            onChanged: (value) {
              controller.privacyPolicy.value = !controller.privacyPolicy.value;
            },
            activeColor: Color(0xff4b68ff),
          ),
        ),
        SizedBox(height: SSizes.spaceBtwInputFields),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${STextString.isAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: STextString.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? SColors.white : SColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? SColors.white : Color(0xff4b68ff),
                    ),
              ),
              TextSpan(
                  text: ' ${STextString.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: STextString.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? SColors.white : SColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? SColors.white : Color(0xff4b68ff),
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
