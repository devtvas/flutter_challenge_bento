import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge_bento/app/presentation/home/widgets/text_description.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_colors.dart';

import '../../../shared/constants/app_images.dart';
import '../widgets/category_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size? size;
    double? height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _appBar(),
              const SizedBox(height: 8),
              _cardOptions(),
              const SizedBox(height: 16),
              _carouselOptions(height, width),
              const SizedBox(height: 30),
              TextDescription(textDescription: 'Shop by category'),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryItem(icon: Icons.eco, label: 'Vegan'),
                    CategoryItem(icon: Icons.restaurant_menu, label: 'Meat'),
                    CategoryItem(icon: Icons.apple, label: 'Fruits'),
                    CategoryItem(icon: Icons.local_drink, label: 'Milk'),
                    CategoryItem(icon: Icons.set_meal, label: 'Fish'),
                  ],
                ),
              ),
              TextDescription(
                textDescription: "Today's Special",
                textButton: "See all",
                onTap: () => print('See all'),
              ),
              const SizedBox(height: 8),
              // gridview of cards
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

//1
  Widget _appBar() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Bacangar, Sambit',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
            ],
          ),
          CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage(
              AppImages.avatar_v1,
            ),
          )
        ],
      ),
    );
  }

//2
  static const _alignments0 = [
    // Alignment.topLeft,
    Alignment.topRight,
    // Alignment.bottomLeft,
    Alignment.bottomRight,
  ];
  static const _alignments1 = [
    // Alignment.topLeft,
    Alignment.topRight,
    // Alignment.bottomLeft,
    Alignment.bottomRight,
  ];
  var _index0 = 0;
  var _index1 = 1;

  AlignmentGeometry get _alignment0 =>
      _alignments0[_index0 % _alignments0.length];
  AlignmentGeometry get _alignment1 =>
      _alignments1[_index1 % _alignments1.length];

  var cardOptionsColor = AppColors.primaryLigth;
  bool isCardOptions = true;

  Widget _cardOptions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              child: Container(
                height: 80,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                decoration: BoxDecoration(
                  color: isCardOptions
                      ? AppColors.primaryLigth
                      : AppColors.placeholder,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'ORDER \nAGAIN',
                            style: TextStyle(
                              color: AppColors.secondary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 80,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: InkWell(
                          child: AnimatedAlign(
                            alignment: _alignment0,
                            duration: const Duration(seconds: 2),
                            curve: Curves.easeInOutBack,
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: Image.asset(
                                AppImages.imageCardStoreV2,
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                setState(() {
                  _index0++;
                  _index1++;
                  isCardOptions = !isCardOptions;
                });
              },
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: InkWell(
              child: Container(
                height: 80,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                decoration: BoxDecoration(
                  color: isCardOptions
                      ? AppColors.placeholder
                      : AppColors.primaryLigth,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'LOCAL \nSHOP',
                            style: TextStyle(
                              color: AppColors.secondary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 80,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: InkWell(
                          child: AnimatedAlign(
                            alignment: _alignment1,
                            duration: const Duration(seconds: 2),
                            curve: Curves.easeInOutBack,
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: Image.asset(
                                AppImages.imageCardStoreV3,
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                setState(() {
                  _index1++;
                  _index0++;
                  isCardOptions = !isCardOptions;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

// 3
  final cardController = PageController(viewportFraction: 0.8, keepPage: true);
  CarouselSliderController innerCarouselController = CarouselSliderController();
  CarouselSliderController outerCarouselController = CarouselSliderController();
  int innerCurrentPage = 0;
  int outerCurrentPage = 0;
  Widget _carouselOptions(double height, double width) {
    /// Outer Style Indicators Banner Slider

    return Column(
      children: [
        CarouselSlider(
          carouselController: outerCarouselController,

          /// It's options
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            aspectRatio: 16 / 8,
            viewportFraction: .95,
            onPageChanged: (index, reason) {
              setState(() {
                outerCurrentPage = index;
              });
            },
          ),

          items: AppData.outerStyleImages.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                /// Custom Image Viewer widget
                return CustomImageViewer.show(
                    context: context,
                    url: imagePath,
                    fit: BoxFit.fill,
                    radius: 10);
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 10,
        ),

        /// Indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            AppData.outerStyleImages.length,
            (index) {
              bool isSelected = outerCurrentPage == index;
              return GestureDetector(
                onTap: () {
                  outerCarouselController.animateToPage(index);
                },
                child: AnimatedContainer(
                  width: isSelected ? 30 : 10,
                  height: 10,
                  margin: EdgeInsets.symmetric(horizontal: isSelected ? 6 : 3),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? Colors.deepPurpleAccent
                        : Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(
                      40,
                    ),
                  ),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class AppData {
  AppData._();
  static final List<String> outerStyleImages = [
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/new-arrival-discount-offer-on-shoes-poster-ad-design-template-20e8be063593e460ec1eadf156df2a71_screen.jpg?ts=1607504280',
    'https://www.mall499.com/wp-content/uploads/2021/12/banner-skechers-1.png',
    'https://codecanyon.img.customer.envatousercontent.com/files/352931146/Preview.jpg?auto=compress%2Cformat&q=80&fit=crop&crop=top&max-h=8000&max-w=590&s=29e647d179d8704189dced38088fac34',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/shoes-craze-sale-facebook-ad-design-template-b1d1738fd5e9e0f6e3152ec502a1c2e1_screen.jpg?ts=1567579016',
    'https://codecanyon.img.customer.envatousercontent.com/files/352468295/Preview.jpg?auto=compress%2Cformat&q=80&fit=crop&crop=top&max-h=8000&max-w=590&s=cea2b1e7878f5ef6b903f9b3625460fe',
    'https://rstatic.shoecarnival.com/domain/5265_508_20231225_Winter_Season_Store_Locator_Banner2_(1).jpg',
    'https://graphicsfamily.com/wp-content/uploads/2020/07/Shoes-Advertising-Banner-Design-Template-scaled.jpg',
  ];
}

class CustomImageViewer {
  CustomImageViewer._();

  static show(
      {required BuildContext context,
      required String url,
      BoxFit? fit,
      double? radius}) {
    return CachedNetworkImage(
        imageUrl: url,
        fit: fit ?? BoxFit.cover,
        imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                color: Theme.of(context).dialogBackgroundColor,
                borderRadius: BorderRadius.circular(
                  radius ?? 8,
                ),
                image: DecorationImage(
                  image: imageProvider,
                  fit: fit ?? BoxFit.cover,
                ),
              ),
            ),
        placeholder: (context, url) => Container(),
        errorWidget: (context, url, error) => const Icon(Icons.error_outline));
  }
}
