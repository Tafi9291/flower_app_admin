import 'package:flower_admin/common/widgets/appbar/appbar.dart';
import 'package:flower_admin/featured/category/add_category.dart';
import 'package:flower_admin/featured/category/widgets/category_item.dart';
import 'package:flower_admin/utils/constants/colors.dart';
import 'package:flower_admin/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        leadingIcon: Icons.menu, 
        leadingOnPressed: (){Scaffold.of(context).openDrawer();},
        title: const Text('Phân loại sản phẩm'),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index){
              return const Padding(
                padding: EdgeInsets.all(TSizes.md),
                child: TCategoryItem(),
              );
            },
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: TColors.primary,
            foregroundColor: Colors.black,
            onPressed: () => Get.to(() => const AddCategoryScreen()),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}