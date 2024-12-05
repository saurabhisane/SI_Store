import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:si_store/common/styles/spacing_styles.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_string.dart';
import '../../utils/helpers/helper_formatter.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.paddingWithAppbarHeight * 2,
          child: Column(
            children: [
              Image(
                  image: AssetImage(image),
                  width: SHelperFormatter.screenwidth() * 0.6),
              SizedBox(height: SSizes.spaceBetweenSections*2),
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: SSizes.spaceBtwInputFields),
              Text(subTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: SSizes.spaceBetweenSections),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff4b68ff),
                          textStyle:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                      child: Text(STextString.sContinue))),
            ],
          ),
        ),
      ),
    );
  }
}
