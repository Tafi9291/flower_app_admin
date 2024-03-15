import 'package:flower_admin/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flower_admin/common/widgets/images/t_rounded_image.dart';
import 'package:flower_admin/common/widgets/texts/noti_title_text.dart';
import 'package:flower_admin/featured/category/edit_category.dart';
import 'package:flower_admin/utils/constants/colors.dart';
import 'package:flower_admin/utils/constants/image_strings.dart';
import 'package:flower_admin/utils/constants/sizes.dart';
import 'package:flower_admin/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TCategoryItem extends StatefulWidget {
  const TCategoryItem({super.key});

  @override
  State<TCategoryItem> createState() => _TCategoryItemState();
}

class _TCategoryItemState extends State<TCategoryItem> {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        border: Border.all(style: BorderStyle.solid, color: TColors.darkGrey),
        color: dark ? TColors.darkerGrey : TColors.softGrey,
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
            width: 180,
            child: Padding(
              padding: EdgeInsets.only(top: TSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TNotiTitleText(title: 'Hoa sinh nhật',)
                      
                    ],
                  ),
                ], 
              ),
            ),
          ),
          IconButton(onPressed: () => Get.to(() => const EditCategoryScreen()), icon: const Icon(Icons.edit_outlined)),
          const SizedBox(width: TSizes.sm),
          IconButton(
            onPressed: (){
              showDialog(
                context: context, 
                builder: (context) => AlertDialog(
                  title: const Text('Cảnh báo!!!'),
                  content: const Text('Bạn có chắc muốn xóa không?'),
                  actions: [
                    TextButton(onPressed: (){}, child: const Text('Hủy', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)),
                    TextButton(onPressed: (){}, child: const Text('Ok', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)),
                  ],
                )
                
              );
            }, 
            icon: const Icon(Icons.delete_outline),
          ),
        ],
      ),
    );
  }
}