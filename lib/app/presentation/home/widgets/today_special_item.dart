import 'package:flutter/material.dart';
import 'package:flutter_challenge_bento/app/data/models/today_special_model.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_colors.dart';

class TodaySpecialItem extends StatelessWidget {
  final TodaySpecialOffer offer;

  const TodaySpecialItem({
    super.key,
    required this.offer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: offer.color,
        borderRadius: BorderRadius.circular(16),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.2),
        //     spreadRadius: 1,
        //     blurRadius: 4,
        //     offset: const Offset(0, 2),
        //   ),
        // ],
      ),
      child: Stack(
        children: [
          // Imagem de fundo
          Positioned(
            bottom: 90,
            left: 30,
            right: 30,
            top: 20,
            child: Image.asset(
              offer.image, // Substitua pela URL real da imagem
              fit: BoxFit.fill,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 16),
                const SizedBox(width: 4),
                Text(offer.rating.toString()),
              ],
            ),
          ),

          // Informações do produto
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        offer.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.secondary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    // ignore: prefer_const_constructors
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0, bottom: 8, right: 8, left: 8),
                          child: Text(
                            '\$${(offer.price).toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.secondary,
                            ),
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     Icon(Icons.star, color: Colors.amber, size: 16),
                        //     Text('4.5'),
                        //   ],
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Botão de adicionar
          Positioned(
            bottom: 10,
            left: 155,
            right: 10,
            top: 210,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.primaryLigth,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 10,
            left: 150,
            right: 10,
            top: 205,
            child: IconButton(
              icon: const Icon(Icons.add, color: Colors.black),
              onPressed: () {
                // Adicionar lógica para adicionar o produto
              },
            ),
          ),
        ],
      ),
    );
  }
}
