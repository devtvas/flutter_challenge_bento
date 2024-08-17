import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge_bento/app/data/models/category_model.dart';
import 'package:flutter_challenge_bento/app/data/models/today_special_model.dart';
import 'package:flutter_challenge_bento/app/presentation/home/bloc/product_state.dart';
import 'package:flutter_challenge_bento/app/presentation/home/widgets/text_description.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_colors.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_icons.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_mock.dart';

import '../../../shared/constants/app_images.dart';
import '../bloc/product_cubit.dart';
import '../widgets/category_item.dart';
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
              const SizedBox(height: 20),
              TextDescription(textDescription: 'Shop by category'),
              const SizedBox(height: 8),
              _category(),
              const SizedBox(height: 20),
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
                      color: AppColors.gray,
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
  final List<CategoryModel> categories = [
    CategoryModel(name: 'Vegan', icon: AppIcons.vegan),
    CategoryModel(name: 'Meat', icon: AppIcons.meat),
    CategoryModel(name: 'Fruits', icon: AppIcons.fruits),
    CategoryModel(name: 'Milk', icon: AppIcons.milk),
    CategoryModel(name: 'Fish', icon: AppIcons.fish),
  ];

  Widget _category() {
    return SizedBox(
      height: 120, // Adjust the height as needed
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: AppMock.categories.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              category: categories[index],
              color:
                  index == 0 ? AppColors.greenLigth100 : AppColors.grayLigth100,
            );
          },
        ),
      ),
    );
  }

  // 5

  final List<TodaySpecialOffer> offers = [
    TodaySpecialOffer(
      name: "Special Onion",
      image: AppImages.todaySpecial1,
      rating:
          4.5, // Adicionei um valor de rating, já que não estava nos dados originais
      description: "Fresh and crispy orange",
      price: 5.99, // Convertido para centavos para usar int
      color: Colors.orange,
    ),
    TodaySpecialOffer(
      name: "Green Cabbage",
      image: AppImages.todaySpecial2,
      rating: 4.2, // Valor de rating arbitrário
      description: "Whole long-life cabbage",
      price: 6.90, // Convertido para centavos
      color: Colors.green,
    ),
    TodaySpecialOffer(
      name: "Red Berry",
      image: AppImages.todaySpecial3,
      rating: 4.7, // Valor de rating arbitrário
      description: "Whole long-life berry",
      price: 6.85, // Convertido para centavos
      color: Colors.red,
    ),
    TodaySpecialOffer(
      name: "Organic Lemon",
      image: AppImages.todaySpecial4,
      rating: 4.3, // Valor de rating arbitrário
      description: "Fresh and crispy lemon",
      price: 7.99, // Convertido para centavos
      color: Colors.yellow,
    ),
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
          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8, // Ajuste este valor conforme necessário
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            shrinkWrap: true, // Isso faz o GridView se ajustar ao conteúdo
            physics: const NeverScrollableScrollPhysics(),
            itemCount: offers.length,
            itemBuilder: (context, index) {
              return TodaySpecialItem(
                offer: offers[index],
              );
            },
          );
        }
        return const SizedBox(height: 32);
      },
    );
  }
}

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
