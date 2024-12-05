import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:si_store/features/authentication/controller/sign_up/signup_controller.dart';
import 'package:si_store/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:si_store/utils/validators/validation.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';

class SSignupForm extends StatelessWidget {
  const SSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                    controller: controller.firstName,
                    validator: (value) =>
                        SValidation.validateEmptyText('First Name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        labelText: STextString.firstName)),
              ),
              SizedBox(
                width: SSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                    controller: controller.lastName,
                    validator: (value) =>
                        SValidation.validateEmptyText('Last Name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        labelText: STextString.lastName)),
              ),
            ],
          ),
          SizedBox(
            height: SSizes.spaceBtwInputFields,
          ),
          TextFormField(
              controller: controller.userName,
              validator: (value) =>
                  SValidation.validateEmptyText('User Name', value),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  labelText: STextString.username)),
          SizedBox(
            height: SSizes.spaceBtwInputFields,
          ),
          TextFormField(
              controller: controller.email,
              validator: (value) => SValidation.validateEmail(value),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  labelText: STextString.email)),
          SizedBox(
            height: SSizes.spaceBtwInputFields,
          ),
          TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => SValidation.validatePhoneNumber(value),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.call),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  labelText: STextString.phoneNo)),
          SizedBox(height: SSizes.spaceBtwInputFields),
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => SValidation.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                prefixIcon: Icon(Iconsax.password_check),
                labelText: STextString.password,
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.hidePassword.value =
                        !controller.hidePassword.value;
                  },
                  icon: Icon(controller.hidePassword.value
                      ? Iconsax.eye_slash
                      : Iconsax.eye),
                ), //Icon(Iconsax.eye_slash),
              ),
            ),
          ),
          SizedBox(height: SSizes.spaceBtwInputFields),
          const STermsAndConditionsCheckbox(),
          SizedBox(
            height: SSizes.spaceBtwInputFields,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => controller.signup(),
                style: ElevatedButton.styleFrom(
                    textStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    backgroundColor: Color(0xff4b68ff)),
                child: Text(STextString.createAccount)),
          ),
        ],
      ),
    );
  }
}
