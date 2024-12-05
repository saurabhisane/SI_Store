import 'package:flutter/material.dart';

import '../../../../../common/appbar/appbar.dart';
import '../../../../../common/widgets/product/produc_cart_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_string.dart';

class SHomeAppbar extends StatelessWidget {
  const SHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SAppbar(
      Title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(STextString.homeAppbarSubTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: SColors.grey)),
          ),
          Text(STextString.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: SColors.white))
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SCartCounterIcon(
            onpressed: () {},
            iconColor: SColors.white,
          ),
        ),
      ],
    );
  }
}
