import 'package:flutter/material.dart';
import 'package:flutter_challenge_bento/app/presentation/home/widgets/text_description.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
              _carouselOptions(),
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
  Widget _carouselOptions() {
    // return Padding(
    //   padding: const EdgeInsets.all(16.0),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //         width: 358,
    //         height: 122.0000228881836,
    //         child: Stack(
    //           children: <Widget>[
    //             Positioned(
    //                 top: 0,
    //                 left: 0,
    //                 child: Container(
    //                     width: 358,
    //                     height: 122,
    //                     decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.only(
    //                         topLeft: Radius.circular(8),
    //                         topRight: Radius.circular(8),
    //                         bottomLeft: Radius.circular(8),
    //                         bottomRight: Radius.circular(8),
    //                       ),
    //                       color: Color.fromRGBO(251, 236, 214, 1),
    //                     ))),
    //             Positioned(
    //                 top: 0,
    //                 left: 0,
    //                 child: Container(
    //                     width: 126,
    //                     height: 122,
    //                     decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                           image: AssetImage('assets/images/avatar_v1.png'),
    //                           fit: BoxFit.fitWidth),
    //                     ))),
    //             Positioned(
    //               top: 24,
    //               left: 85,
    //               child: Container(
    //                 width: 188,
    //                 height: 50,
    //                 child: Stack(
    //                   children: <Widget>[
    //                     Positioned(
    //                         top: 31,
    //                         left: 38,
    //                         child: Text(
    //                           'UP TO 15% OFF',
    //                           textAlign: TextAlign.left,
    //                           style: TextStyle(
    //                               color: Color.fromRGBO(35, 170, 73, 1),
    //                               fontFamily: 'SF Pro Rounded',
    //                               fontSize: 14,
    //                               letterSpacing:
    //                                   0 /*percentages not used in flutter. defaulting to zero*/,
    //                               fontWeight: FontWeight.normal,
    //                               height: 1.3571428571428572),
    //                         )),
    //                     Positioned(
    //                       top: 0,
    //                       left: 0,
    //                       child: Text(
    //                         'FRESH AVOCADO',
    //                         textAlign: TextAlign.left,
    //                         style: TextStyle(
    //                             color: Color.fromRGBO(26, 33, 40, 1),
    //                             fontFamily: 'Aclonica',
    //                             fontSize: 20,
    //                             letterSpacing:
    //                                 0 /*percentages not used in flutter. defaulting to zero*/,
    //                             fontWeight: FontWeight.normal,
    //                             height: 0.95),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             Positioned(
    //                 top: 37.8948974609375,
    //                 left: 247.60162353515625,
    //                 child: Transform.rotate(
    //                   angle: 15.43302448321973 * (math.pi / 180),
    //                   child: Container(
    //                       width: 89.79251098632812,
    //                       height: 87.25121307373047,
    //                       decoration: BoxDecoration(
    //                         image: DecorationImage(
    //                             image: AssetImage(AppImages.imageCardStore),
    //                             fit: BoxFit.fitWidth),
    //                       )),
    //                 )),
    //             Positioned(
    //               top: 41,
    //               left: 262,
    //               child: Container(
    //                 width: 63,
    //                 height: 61,
    //                 decoration: BoxDecoration(
    //                   color: Color.fromRGBO(235, 153, 0, 1),
    //                   borderRadius: BorderRadius.all(Radius.elliptical(63, 61)),
    //                 ),
    //               ),
    //             ),
    //             Text(
    //               'Top deal!',
    //               style: TextStyle(
    //                 fontSize: 18,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             SizedBox(height: 8),
    //             ElevatedButton(
    //               onPressed: () {},
    //               child: Text('Shop Now'),
    //               style: ElevatedButton.styleFrom(
    //                 backgroundColor: Colors.green,
    //               ),
    //             ),
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView(
            controller: cardController,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.amber,
                  width: 100,
                  height: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.amber,
                  width: 100,
                  height: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.amber,
                  width: 100,
                  height: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.amber,
                  width: 100,
                  height: 40,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SmoothPageIndicator(
          controller: cardController,
          count: 4,
          effect: const ExpandingDotsEffect(
              activeDotColor: AppColors.primaryLigth,
              dotColor: AppColors.placeholder,
              dotHeight: 10,
              dotWidth: 10),
        ),
      ],
    );
  }
}
