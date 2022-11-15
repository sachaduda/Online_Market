import 'package:flutter/material.dart';

class CatalogWidget extends StatelessWidget {
  const CatalogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 500,
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      BestSellerProductWidget(
                        id: 111,
                        title: 'Samsung Galaxy s20 Ultra',
                        discountPrice: 1500,
                        price: 1.047,
                        imageUrl:
                            'https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg',
                      ),
                      BestSellerProductWidget(
                        id: 222,
                        title: 'Xiaomi Mi 10 Pro',
                        discountPrice: 400,
                        price: 300,
                        imageUrl:
                            'https://mi92.ru/wp-content/uploads/2020/03/smartfon-xiaomi-mi-10-pro-12-256gb-global-version-starry-blue-sinij-1.jpg',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      BestSellerProductWidget(
                        id: 333,
                        title: 'Samsung Galaxy s20 Ultra',
                        discountPrice: 1500,
                        price: 1.047,
                        imageUrl:
                            'https://opt-1739925.ssl.1c-bitrix-cdn.ru/upload/iblock/c01/c014d088c28d45b606ed8c58e5817172.jpg?160405904823488',
                      ),
                      BestSellerProductWidget(
                        id: 444,
                        title: 'Motorola One Edge',
                        discountPrice: 600,
                        price: 400,
                        imageUrl:
                            'https://www.benchmark.rs/assets/img/news/edge1.jpg',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      BestSellerProductWidget(
                        id: 111,
                        title: 'Samsung Galaxy s20 Ultra',
                        discountPrice: 1500,
                        price: 1.047,
                        imageUrl:
                            'https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg',
                      ),
                      BestSellerProductWidget(
                        id: 111,
                        title: 'Samsung Galaxy s20 Ultra',
                        discountPrice: 1500,
                        price: 1.047,
                        imageUrl:
                            'https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      BestSellerProductWidget(
                        id: 111,
                        title: 'Samsung Galaxy s20 Ultra',
                        discountPrice: 1500,
                        price: 1.047,
                        imageUrl:
                            'https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg',
                      ),
                      BestSellerProductWidget(
                        id: 111,
                        title: 'Samsung Galaxy s20 Ultra',
                        discountPrice: 1500,
                        price: 1.047,
                        imageUrl:
                            'https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BestSellerProductWidget extends StatelessWidget {
  final int id;
  final String imageUrl;
  final double price;
  final double discountPrice;

  final String title;

  const BestSellerProductWidget(
      {super.key,
      required this.id,
      required this.imageUrl,
      required this.price,
      required this.discountPrice,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Image.network(
                imageUrl,
                height: 187,
                width: 168,
              ),
              Material(
                color: Colors.transparent,
                child: Ink(
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    splashRadius: 20,
                    icon: const Icon(Icons.favorite_border_outlined),
                    color: const Color.fromRGBO(255, 110, 78, 1),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 21),
              Text(
                r'$' + price.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 7),
              Text(
                r'$' + discountPrice.toString(),
                style: const TextStyle(
                  color: Color(0xffCCCCCC),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
      onTap: () => {Navigator.pushNamed(context, 'main_page/product_page')},
    );
  }
}
