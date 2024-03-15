import 'package:flutter/material.dart';
import 'package:flower_admin/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flower_admin/common/widgets/images/t_rounded_image.dart';
import 'package:flower_admin/common/widgets/texts/noti_title_text.dart';
import 'package:flower_admin/utils/constants/colors.dart';
import 'package:flower_admin/utils/constants/image_strings.dart';
import 'package:flower_admin/utils/constants/sizes.dart';
import 'package:flower_admin/utils/helpers/helper_functions.dart';

class TNotificationItem extends StatefulWidget {
  const TNotificationItem({super.key});

  @override
  State<TNotificationItem> createState() => _TNotificationItemState();
}

class _TNotificationItemState extends State<TNotificationItem> {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.softGrey,
        border: Border.all(width: 1, color: const Color.fromARGB(255, 90, 90, 90))
      ),
      child: Row(
        children: [
          /// Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: const Stack(
              children: [
                /// Thumbnail Image
                SizedBox(
                  height: 120,
                  width: 70,
                  child: TRoundedImage(imageUrl: TImages.hoa1, applyImageRadius: true),
                ),
              ],
            ),
          ),

          /// Details
          const SizedBox(
            width: 210,
            child: Padding(
              padding: EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TNotiTitleText(title: 'Bạn đã đặt hàng thành công Lovely chủ đề Sinh nhật'),
                      
                      
                    ],
                  ),
                ], 
              ),
            ),
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_right_outlined),),
        ],
      ),
    );
  }
}