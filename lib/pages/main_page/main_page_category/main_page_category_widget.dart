import 'package:flutter/material.dart';
import 'package:market_project/pages/main_page/main_page_catalog/main_page_catalog_widget.dart';
import '../main_page_hot_sales/main_page_hot_sales_widget.dart';
import 'main_page_category_model.dart';

enum Category { phones, computer, health, books, office }

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  Category _isSelected = Category.phones;

  Widget _selectedWidgetHotSeller() {
    switch (_isSelected) {
      case Category.phones:
        return const HotSalesWidget();
      case Category.computer:
        return Text('Computer');
      case Category.health:
        return Text('H');
      case Category.books:
        return Text('B');
      case Category.office:
        return Text('O');
    }
  }

  Widget _selectedWidgetBestSeller() {
    switch (_isSelected) {
      case Category.phones:
        return const CatalogWidget();
      case Category.computer:
        return Text('Computer');
      case Category.health:
        return Text('H');
      case Category.books:
        return Text('B');
      case Category.office:
        return Text('O');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryInfoWidget(
          mainText: 'Select category',
          buttonText: 'view all',
          onPressed: () {},
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 110,
          child: ListView(
            padding: const EdgeInsets.only(left: 27),
            scrollDirection: Axis.horizontal,
            children: [
              CategorySelectionTabWidget(
                iconCategory: categoryList[0].icon,
                nameCategory: categoryList[0].name,
                isSelected: _isSelected == Category.phones,
                onPressed: () {
                  _isSelected = Category.phones;
                  setState(() {});
                },
              ),
              CategorySelectionTabWidget(
                iconCategory: categoryList[1].icon,
                nameCategory: categoryList[1].name,
                isSelected: _isSelected == Category.computer,
                onPressed: () {
                  _isSelected = Category.computer;
                  setState(() {});
                },
              ),
              CategorySelectionTabWidget(
                iconCategory: categoryList[2].icon,
                nameCategory: categoryList[2].name,
                isSelected: _isSelected == Category.health,
                onPressed: () {
                  _isSelected = Category.health;
                  setState(() {});
                },
              ),
              CategorySelectionTabWidget(
                iconCategory: categoryList[3].icon,
                nameCategory: categoryList[3].name,
                isSelected: _isSelected == Category.books,
                onPressed: () {
                  _isSelected = Category.books;
                  setState(() {});
                },
              ),
              CategorySelectionTabWidget(
                iconCategory: categoryList[4].icon,
                nameCategory: categoryList[4].name,
                isSelected: _isSelected == Category.office,
                onPressed: () {
                  _isSelected = Category.office;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 35),
        const CatalogTextFormWidget(),
        const SizedBox(height: 20),
        CategoryInfoWidget(
          mainText: 'Hot sales',
          buttonText: 'see more',
          onPressed: () {},
        ),
        const SizedBox(height: 9),
        _selectedWidgetHotSeller(),
        CategoryInfoWidget(
          mainText: 'Catalog',
          buttonText: 'see all',
          onPressed: () {},
        ),
        _selectedWidgetBestSeller(),
      ],
    );
  }
}

class CategoryInfoWidget extends StatelessWidget {
  final String mainText;
  final String buttonText;
  final VoidCallback onPressed;

  const CategoryInfoWidget(
      {super.key,
      required this.mainText,
      required this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 10, 33, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mainText,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
          TextButton(
            onPressed: () {
              onPressed();
            },
            child: Text(
              buttonText,
              style: const TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(255, 110, 78, 1),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategorySelectionTabWidget extends StatelessWidget {
  final IconData iconCategory;
  final String nameCategory;
  final bool isSelected;
  final VoidCallback onPressed;

  const CategorySelectionTabWidget({
    super.key,
    required this.iconCategory,
    required this.nameCategory,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 23),
      child: Column(
        children: [
          MaterialButton(
            shape: const CircleBorder(),
            height: 80,
            minWidth: 80,
            color: isSelected
                ? const Color.fromRGBO(255, 110, 78, 1)
                : Colors.white,
            child: Icon(
              iconCategory,
              color: isSelected ? Colors.white : const Color(0xFFB3B3C3),
              size: 30,
            ),
            onPressed: () {
              onPressed();
            },
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            nameCategory,
            style: TextStyle(
                color: isSelected
                    ? const Color.fromRGBO(255, 110, 78, 1)
                    : Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class CatalogTextFormWidget extends StatelessWidget {
  const CatalogTextFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
            width: 300,
            height: 35,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                labelStyle: TextStyle(color: Color(0xFFB3B3C3)),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(255, 110, 78, 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(255, 110, 78, 1),
                  ),
                ),
              ),
              style: TextStyle(fontSize: 12),
            )),
        const SizedBox(width: 11),
        MaterialButton(
          shape: const CircleBorder(),
          height: 34,
          minWidth: 34,
          color: const Color.fromRGBO(255, 110, 78, 1),
          child: const Icon(
            Icons.qr_code,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
