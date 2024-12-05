import 'package:flutter/material.dart';
import 'package:si_store/common/styles/spacing_styles.dart';
import 'package:si_store/features/authentication/screens/Login/widgets/login_footer.dart';
import 'package:si_store/features/authentication/screens/Login/widgets/login_form.dart';
import 'package:si_store/features/authentication/screens/Login/widgets/login_header.dart';
import 'package:si_store/utils/constants/sizes.dart';
import 'package:si_store/utils/helpers/helper_formatter.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFormatter.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.paddingWithAppbarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              loginHeader(dark: dark), // Main logo , login title and subtitle

              const SizedBox(height: SSizes.md),

              LoginForm(), // Email , password , remember , sign in , create account

              SizedBox(height: SSizes.spaceBetweenSections),

              LoginFooter(
                  dark: dark), // divider icon buttons of google and facebook
            ],
          ),
        ),
      ),
    );
  }
}
