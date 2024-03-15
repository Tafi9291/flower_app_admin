import 'package:flower_admin/featured/password_configuration/reset_password.dart';
import 'package:flower_admin/utils/constants/sizes.dart';
import 'package:flower_admin/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headings
            Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            /// Text field
            TextFormField(
              decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Submit button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(() => const ReSetPassword()), child: const Text(TTexts.submit),),)
          ],
        ),
      ),
    );
  }
}