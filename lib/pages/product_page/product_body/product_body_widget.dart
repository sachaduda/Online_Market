import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ProductBodyWidget extends StatelessWidget {
  const ProductBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProductImagesWidget(
          imageUrl:
              'https://www.manualspdf.ru/thumbs/products/l/1260237-samsung-galaxy-note-20-ultra.jpg',
        ),
        const SizedBox(height: 20),
        const ProductTitleWidget(
          title: 'Galaxy Note 20 Ultra',
        ),
        const ProductRatingWidget(rating: 3.5),
        const SizedBox(height: 35),
        const ProductInfoWidget(
          cpu: 'Exynos 990',
          camera: '108 + 12 mp',
          ssd: '8 GB',
          sd: '256 GB',
        ),
        const SizedBox(height: 20),
        ProductSelectedParametersWidget(
          colors: const [Colors.blue, Colors.red],
          isSelected: true,
          onPressed: () {},
        ),
      ],
    );
  }
}

class ProductImagesWidget extends StatelessWidget {
  final String imageUrl;
  const ProductImagesWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(
          initialScrollOffset: MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width / 3),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Image.network(
            imageUrl,
            height: 350,
            width: MediaQuery.of(context).size.width,
          ),
          Image.network(
            'https://www.osp.ru/FileStorage/ARTICLE/DGL/2020-08/08_20/13233107/DGL_2222_(7023).jpg',
            height: 350,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}

class ProductTitleWidget extends StatelessWidget {
  final String title;
  const ProductTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xff010035),
            fontSize: 24,
          ),
        ),
        Ink(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xff010035),
          ),
          child: IconButton(
            splashRadius: 22,
            icon: const Icon(Icons.favorite_border_outlined),
            color: Colors.white,
            iconSize: 20,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class ProductRatingWidget extends StatelessWidget {
  final double rating;
  const ProductRatingWidget({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(38, 7, 0, 0),
      child: RatingStars(
        value: rating,
        starBuilder: (index, color) => Icon(
          Icons.star_rate,
          color: color,
        ),
        starCount: 5,
        starSize: 25,
        valueLabelVisibility: false,
        maxValue: 5,
        starSpacing: 2,
        maxValueVisibility: true,
        valueLabelMargin: const EdgeInsets.only(right: 8),
        starOffColor: const Color(0xffe7e8ea),
        starColor: const Color(0xffFFB800),
      ),
    );
  }
}

class ProductInfoWidget extends StatelessWidget {
  final String cpu;
  final String camera;
  final String ssd;
  final String sd;

  const ProductInfoWidget(
      {super.key,
      required this.cpu,
      required this.camera,
      required this.ssd,
      required this.sd});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Icon(
              Icons.memory,
              size: 28,
              color: Color(0xffB7B7B7),
            ),
            Text(
              cpu,
              style: const TextStyle(
                color: Color(0xffB7B7B7),
                fontSize: 11,
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Icon(
              Icons.photo_camera,
              size: 28,
              color: Color(0xffB7B7B7),
            ),
            Text(
              camera,
              style: const TextStyle(
                color: Color(0xffB7B7B7),
                fontSize: 11,
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Icon(
              Icons.settings,
              size: 28,
              color: Color(0xffB7B7B7),
            ),
            Text(
              ssd,
              style: const TextStyle(
                color: Color(0xffB7B7B7),
                fontSize: 11,
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Icon(
              Icons.sd_card,
              size: 28,
              color: Color(0xffB7B7B7),
            ),
            Text(
              sd,
              style: const TextStyle(
                color: Color(0xffB7B7B7),
                fontSize: 11,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ProductSelectedParametersWidget extends StatefulWidget {
  final List<Color> colors;
  final bool isSelected;
  final VoidCallback onPressed;
  const ProductSelectedParametersWidget(
      {super.key,
      required this.colors,
      required this.isSelected,
      required this.onPressed});

  @override
  State<ProductSelectedParametersWidget> createState() =>
      _ProductSelectedParametersWidgetState();
}

class _ProductSelectedParametersWidgetState
    extends State<ProductSelectedParametersWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const CircleBorder(),
      height: 40,
      minWidth: 40,
      color: widget.colors[0],
      child: widget.isSelected
          ? const Icon(
              Icons.check,
              color: Colors.white,
              size: 10,
            )
          : const SizedBox.shrink(),
      onPressed: () {
        widget.onPressed();
      },
    );
  }
}
