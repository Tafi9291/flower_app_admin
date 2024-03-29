import 'package:flutter/material.dart';
import 'package:flower_admin/utils/constants/colors.dart';
import 'package:flower_admin/utils/constants/sizes.dart';
import 'package:flower_admin/utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key, 
    required this.width,
    required this.height,
    this.overlayColor, 
    required this.image, 
    this.backgroundColor, 
    this.fit = BoxFit.cover, 
    this.padding = TSizes.sm,
    this.isNetworkImage = false, 
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}