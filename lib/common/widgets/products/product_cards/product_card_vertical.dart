import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flower_admin/common/styles/shadows.dart';
import 'package:flower_admin/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flower_admin/common/widgets/icons/t_circular_icon.dart';
import 'package:flower_admin/common/widgets/images/t_rounded_image.dart';
import 'package:flower_admin/common/widgets/texts/product_price_text.dart';
import 'package:flower_admin/common/widgets/texts/product_title_text.dart';
import 'package:flower_admin/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flower_admin/utils/constants/colors.dart';
import 'package:flower_admin/utils/constants/image_strings.dart';
import 'package:flower_admin/utils/constants/sizes.dart';
import 'package:flower_admin/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      // onTap: () => Get.to(() => const ProductDetailSrceen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, WishList Button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm) ,
              backgroundColor: dark ?  TColors.dark : TColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Page
                  const TRoundedImage(imageUrl: TImages.hoa1, applyImageRadius: true,),
                  /// Sale tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                    ),
                  ),
      
                  /// Favourite Icon button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
      
            /// Detail
            const Padding(
              padding: EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TProductTitleText(title: 'Lovely', smallSize: true,),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: 'Hoa sinh nhật'),
                ],
              ),
            ),

            // Todo: Add Space() here to keep the height of each box same in case 1 or 2 line of Headings.
            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: '350.000'),
                ),
                /// Add to cart button
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.darkPrimary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(child: Icon(Iconsax.add, color: TColors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




