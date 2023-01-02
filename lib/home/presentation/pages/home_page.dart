
import 'package:flutter/material.dart';
import 'package:flutter_figma_test/home/presentation/widgets/AppBar/app_bar_widget.dart';
import 'package:flutter_figma_test/home/presentation/widgets/List/list_widget.dart';
import 'package:flutter_figma_test/home/presentation/widgets/SelectCategory/select_category_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: const [
            SizedBox(height: 45),
            AppBarWidget(),
            SizedBox(height: 45),
            SelectCategoryWidget(),
            ListWidget(),
            
          ],
        ),
      ),
    );
  }
}
