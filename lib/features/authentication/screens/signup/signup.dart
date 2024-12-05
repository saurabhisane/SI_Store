import 'package:flutter/material.dart';
import 'package:si_store/common/login_widget_signup.dart/social_buttons.dart';
import 'package:si_store/common/login_widget_signup.dart/text_divider.dart';
import 'package:si_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:si_store/utils/constants/text_string.dart';
import 'package:si_store/utils/helpers/helper_formatter.dart';
import '../../../../utils/constants/sizes.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFormatter.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                STextString.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: SSizes.spaceBetweenSections,
              ),

              //Form
              SSignupForm(dark: dark),

              SizedBox(
                height: SSizes.spaceBetweenSections,
              ),
              SFormDivider(dark: dark, dividerText: STextString.orSignUpWith),
              SizedBox(
                height: SSizes.spaceBetweenSections,
              ),
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
