import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge_bento/app/data/models/today_special_model.dart';
import 'package:flutter_challenge_bento/app/presentation/home/bloc/product_state.dart';
import 'package:flutter_challenge_bento/app/presentation/home/widgets/text_description.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_colors.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_icons.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_mock.dart';

import '../../../shared/constants/app_images.dart';
import '../bloc/product_cubit.dart';
import '../widgets/today_special_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final productCubit = ProductCubit();
  bool isOrderAgain = true;
  @override
  void initState() {
    super.initState();
    productCubit.getProducts();
  }

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
              _category(),
              const SizedBox(height: 8),
              TextDescription(
                textDescription: "Today's Special",
                textButton: "See all",
                onTap: () => print('See all'),
              ),
              const SizedBox(height: 8),
              // gridview of cards
              _todaySpecial(),
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
            backgroundImage: AssetImage(
              AppImages.avatarV1,
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
                  color: AppColors.primaryLigth,
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
                  isOrderAgain = true;
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
                  color: AppColors.primaryLigth,
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
                  isOrderAgain = false;
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
  CarouselSliderController localShopCarouselController =
      CarouselSliderController();
  CarouselSliderController orderAgainCarouselController =
      CarouselSliderController();
  int innerCurrentPage = 0;
  int outerCurrentPage = 0;

  Widget _carouselOptions(double height, double width) {
    /// Outer Style Indicators Banner Slider

    return Column(
      children: [
        CarouselSlider(
          carouselController: isOrderAgain
              ? orderAgainCarouselController
              : localShopCarouselController,

          /// It's options
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            aspectRatio: 16 / 8,
            viewportFraction: .92,
            onPageChanged: (index, reason) {
              setState(() {
                outerCurrentPage = index;
                log("$isOrderAgain", name: "isOrderAgain");
              });
            },
          ),

          items: isOrderAgain
              ? AppMock.orderAgain.map(
                  (imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        imagePath.length;
                        return CustomImageViewer.asset(
                            context: context,
                            url: imagePath,
                            fit: BoxFit.fill,
                            radius: 10);
                      },
                    );
                  },
                ).toList()
              : AppMock.localShop.map(
                  (imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        imagePath.length;
                        return CustomImageViewer.asset(
                            context: context,
                            url: imagePath,
                            fit: BoxFit.fill,
                            radius: 10);
                      },
                    );
                  },
                ).toList(),
        ),
        const SizedBox(
          height: 10,
        ),

        /// Indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            AppMock.orderAgain.length,
            (index) {
              bool isSelected = outerCurrentPage == index;
              return GestureDetector(
                onTap: () {
                  // orderAgainCarouselController.animateToPage(index);
                },
                child: AnimatedContainer(
                  width: isSelected ? 30 : 10,
                  height: 10,
                  margin: EdgeInsets.symmetric(horizontal: isSelected ? 6 : 3),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primaryLigth
                        : AppColors.placeholder,
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

// 4
  final List<Category> categories = [
    Category(name: 'Vegan', icon: AppIcons.vegan),
    Category(name: 'Meat', icon: AppIcons.meat),
    Category(name: 'Fruits', icon: AppIcons.fruits),
    Category(name: 'Milk', icon: AppIcons.milk),
    Category(name: 'Fish', icon: AppIcons.fish),
  ];

  Widget _category() {
    return Container(
      height: 120, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AppMock.categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(category: categories[index]);
        },
      ),
    );
  }

  // 5

  final List<TodaySpecialOffer> offers = [
    TodaySpecialOffer(name: 'Orange', image: AppIcons.fish, rating: 4.5),
    TodaySpecialOffer(name: 'Cabbage', image: AppIcons.fish, rating: 4.5),
    // Add more offers as needed
  ];

  Widget _todaySpecial() {
    return BlocBuilder<ProductCubit, ProductState>(
      bloc: productCubit, // optional
      builder: (context, state) {
        if (state is ProductLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ProductLoadFailure) {
          return const Text('Error: ');
        } else if (state is ProductLoaded) {
          return SizedBox(
            width: double.infinity,
            height: 300,
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: offers.length,
              itemBuilder: (context, index) {
                return TodaySpecialItem(offer: offers[index]);
              },
            ),
          );
        }
        return const SizedBox(height: 32);
      },
    );
  }
}

class Category {
  final String name;
  final String icon;

  Category({required this.name, required this.icon});
}

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              category.icon,
              fit: BoxFit.scaleDown,
              scale: 10,
            ),
          ),
          const SizedBox(height: 8),
          Text(category.name, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

// class AppData {
//   AppData._();
//   static final List<String> outerStyleImages = [
//     'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/new-arrival-discount-offer-on-shoes-poster-ad-design-template-20e8be063593e460ec1eadf156df2a71_screen.jpg?ts=1607504280',
//     'https://www.mall499.com/wp-content/uploads/2021/12/banner-skechers-1.png',
//     'https://codecanyon.img.customer.envatousercontent.com/files/352931146/Preview.jpg?auto=compress%2Cformat&q=80&fit=crop&crop=top&max-h=8000&max-w=590&s=29e647d179d8704189dced38088fac34',
//     // 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/shoes-craze-sale-facebook-ad-design-template-b1d1738fd5e9e0f6e3152ec502a1c2e1_screen.jpg?ts=1567579016',
//     // 'https://codecanyon.img.customer.envatousercontent.com/files/352468295/Preview.jpg?auto=compress%2Cformat&q=80&fit=crop&crop=top&max-h=8000&max-w=590&s=cea2b1e7878f5ef6b903f9b3625460fe',
//     // 'https://rstatic.shoecarnival.com/domain/5265_508_20231225_Winter_Season_Store_Locator_Banner2_(1).jpg',
//     // 'https://graphicsfamily.com/wp-content/uploads/2020/07/Shoes-Advertising-Banner-Design-Template-scaled.jpg',
//   ];
// }

class CustomImageViewer {
  CustomImageViewer._();

  static asset(
      {required BuildContext context,
      required String url,
      BoxFit? fit,
      double? radius}) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).dialogBackgroundColor,
        borderRadius: BorderRadius.circular(
          radius ?? 8,
        ),
        image: DecorationImage(
          image: AssetImage(url),
          fit: fit ?? BoxFit.cover,
        ),
      ),
    );
  }

  static network(
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
