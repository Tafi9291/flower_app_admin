import 'package:flower_admin/utils/constants/image_strings.dart';
import 'package:flower_admin/utils/constants/sizes.dart';
import 'package:flower_admin/utils/constants/text_strings.dart';
import 'package:flower_admin/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatefulWidget {
  const TLoginHeader({super.key});

  @override
  State<TLoginHeader> createState() => _TLoginHeaderState();
}

class _TLoginHeaderState extends State<TLoginHeader> {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          height: 200,
          image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
        ),
        Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TSizes.sm),
        Text(TTexts.loginAdminSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}