import 'package:flutter/material.dart';

class ProductAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const ProductAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 10, 35, 10),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const ProductLeadingButtonWidget(),
        title: const ProductTitleWidget(),
        actions: const [
          ProductActionButtonWidget(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class ProductLeadingButtonWidget extends StatelessWidget {
  const ProductLeadingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 40,
      width: 10,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xff010035),
      ),
      child: IconButton(
        splashRadius: 20,
        icon: const Icon(Icons.arrow_back),
        color: Colors.white,
        iconSize: 20,
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}

class ProductTitleWidget extends StatelessWidget {
  const ProductTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Product details',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class ProductActionButtonWidget extends StatelessWidget {
  const ProductActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromRGBO(255, 110, 78, 1),
      ),
      child: IconButton(
        splashRadius: 20,
        iconSize: 20,
        icon: const Icon(Icons.shopping_basket_outlined),
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }
}
