import 'package:flutter/material.dart';
import 'package:market_project/pages/product_page/product_body/product_body_widget.dart';
import 'product_app_bar/product_app_bar_widget.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ProductAppBarWidget(),
      body: ProductBodyWidget(),
    );
  }
}
