import 'package:flutter/cupertino.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class SRoundedImage extends StatelessWidget {
  const SRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    required this.imageUrl,
    this.width,
    this.height,
    this.backgroundColor = SColors.white,
    this.applyImageRadius = true,
    this.fit = BoxFit.contain,
    this.isNetworkImage = false,
    this.borderRadius = SSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final Color backgroundColor;
  final bool applyImageRadius;
  final BoxBorder? border;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),

        ),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.circular(0),
            child: Image(
                image: isNetworkImage
                    ? NetworkImage(imageUrl)
                    : AssetImage(imageUrl) as ImageProvider,
                fit: fit)),
      ),
    );
  }
}
