
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flower_admin/common/widgets/texts/t_brand_title_text.dart';
import 'package:flower_admin/utils/constants/colors.dart';
import 'package:flower_admin/utils/constants/enums.dart';
import 'package:flower_admin/utils/constants/sizes.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key, 
    this.textColor, 
    this.maxLines = 1,
    required this.title,
    this.iconColor = TColors.primary, 
    this.textAlign = TextAlign.center, 
    this.brandTextSize = TextSizes.medium,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            color:  textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: TSizes.xs),
        const Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconXs),
      ],
    );
  }
}