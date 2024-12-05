import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:si_store/common/widgets/success_screen.dart';
import 'package:si_store/features/authentication/screens/Login/login_screen.dart';
import 'package:si_store/utils/constants/images_string.dart';
import 'package:si_store/utils/constants/text_string.dart';
import 'package:si_store/utils/helpers/helper_formatter.dart';
import '../../../../utils/constants/sizes.dart';

class VerifyEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              icon: Icon(Icons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(SImagesString.verifyemail),
                width: SHelperFormatter.screenwidth() * 0.6,
              ),
              SizedBox(
                height: SSizes.spaceBetweenSections,
              ),
              Text(
                STextString.verifyEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SSizes.spaceBtwInputFields,
              ),
              Text(
                "contack@gmail.com",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SSizes.spaceBtwInputFields,
              ),
              Text(
                STextString.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SSizes.spaceBetweenSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: SImagesString.success,
                          title: STextString.successScreenTitle,
                          subTitle: STextString.successScreenSubTitle,
                          onPressed: () => Get.to(() => LoginScreen()),
                        )),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff4b68ff),
                        textStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        )),
                    child: Text(STextString.sContinue),
                  )),
              SizedBox(
                height: SSizes.spaceBtwInputFields,
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.grey.withOpacity(0.2)),
                        textStyle:
                            GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    child: Text(STextString.resendEmail),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
