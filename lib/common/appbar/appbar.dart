import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:si_store/utils/constants/sizes.dart';
import 'package:si_store/utils/device/device_utility.dart';

class SAppbar extends StatelessWidget implements PreferredSizeWidget {
  const SAppbar(
      {super.key,
      this.Title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final Widget? Title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(), icon: Icon(Icons.arrow_back))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: Title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SDeviceUtils.getAppbarHeight());
}
