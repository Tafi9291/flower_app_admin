import 'dart:io';

import 'package:flower_admin/common/widgets/appbar/appbar.dart';
import 'package:flower_admin/utils/constants/colors.dart';
import 'package:flower_admin/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddCategoryScreen extends StatefulWidget {
  const AddCategoryScreen({super.key});

  @override
  State<AddCategoryScreen> createState() => _AddCategoryScreenState();
}

class _AddCategoryScreenState extends State<AddCategoryScreen> {

  File ? _selectedImage;
  bool isPicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Thêm phân loại mới')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Icons.category_rounded), labelText: 'Tên loại')),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  color: TColors.grey.withOpacity(0.5), 
                  onPressed: pickImageFromGallery, 
                  child: const Text(
                    'Chọn hình ảnh', 
                    style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                _selectedImage != null ? Image.file(_selectedImage!, height: 200, width: 200, fit: BoxFit.contain) : const Text('Hãy chọn hình ảnh!'),

                const SizedBox(height: TSizes.defaultSpace),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: TColors.darkPrimary), child: const Text('Lưu'),),)
              ],
            ),
          ),
        ),
      ),
    );
  }

  pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image =
        await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      _selectedImage = File(image.path);
      setState(() {
        isPicked = true;
      });
    }
  }
}