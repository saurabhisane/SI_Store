import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:si_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'selevated_button.dart';
import 'soutline_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Email
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: STextString.email),
        ),
        SizedBox(
          height: SSizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: STextString.password,
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),

        SizedBox(
          height: SSizes.spaceBtwInputFields / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                  activeColor: Color(0xff4b68ff),
                ),
                Text(STextString.rememberMe),
              ],
            ),

            //Remember Password
            TextButton(
              onPressed: () => Get.to(() => ForgetPassword()),
              child: Text(
                STextString.forgetPassword,
                style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4b68ff),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: SSizes.spaceBetweenSections,
        ),

        SElevatedButton(
          Stext: STextString.signIn,
        ),

        SizedBox(
          height: SSizes.md,
        ),
        SOutlineButton(
          Stext: STextString.createAccount,
        ),
      ],
    );
  }
}
