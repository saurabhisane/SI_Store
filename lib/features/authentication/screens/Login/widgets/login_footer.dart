import 'package:flutter/material.dart';
import 'package:si_store/common/login_widget_signup.dart/social_buttons.dart';
import 'package:si_store/common/login_widget_signup.dart/text_divider.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SFormDivider(dark: dark, dividerText: STextString.orSignInWith,),

        SizedBox(
          height: SSizes.spaceBetweenSections,
        ),

        const SocialButtons() //
      ],
    );
  }
}



