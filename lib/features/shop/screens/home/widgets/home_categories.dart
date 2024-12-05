import 'package:flutter/material.dart';
import '../../../../../common/widgets/vertical_image_text/vertical_image_text.dart';
import '../../../../../utils/constants/images_string.dart';
import '../../../../../utils/constants/sizes.dart';

class SHomeCategories extends StatelessWidget {
  const SHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: SSizes.xs),
      itemBuilder: (_, index) {
        return SVerticalImageText(title: "Shopping Category",image: SImagesString.sportsIcon,textColor: Colors.white,onTap: (){},);
      },
    );
  }
}
