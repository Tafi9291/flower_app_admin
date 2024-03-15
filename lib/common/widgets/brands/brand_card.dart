import 'package:flutter/material.dart';
import 'package:flower_admin/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flower_admin/common/widgets/images/t_circular_image.dart';
import 'package:flower_admin/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flower_admin/utils/constants/colors.dart';
import 'package:flower_admin/utils/constants/enums.dart';
import 'package:flower_admin/utils/constants/image_strings.dart';
import 'package:flower_admin/utils/constants/sizes.dart';
import 'package:flower_admin/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// Icon
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                image: TImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black, 
                width: 56,
                height: 56,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
      
            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(title: 'Hoa', brandTextSize: TextSizes.large),
                  Text(
                    '200 products asasdasds',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}