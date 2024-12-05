import 'package:flutter/material.dart';
import '../../../../../utils/constants/images_string.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';

class loginHeader extends StatelessWidget {
  const loginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? SImagesString.lightAppLogo : SImagesString.darkAppLogo),
        ),
        const SizedBox(
          height: SSizes.sm,
        ),
        Text(
          STextString.loginTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: SSizes.sm,
        ),
        Text(STextString.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
