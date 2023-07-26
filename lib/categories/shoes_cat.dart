import 'package:flutter/material.dart';
import 'package:multistore/utilities/categ_list.dart';

import '../widgets/categ_widgets.dart';

class ShoesCategory extends StatelessWidget {
  const ShoesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.87,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategHeaderLabel(
                    headerLabel: 'Shoes',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 70,
                      crossAxisSpacing: 15,
                      children: List.generate(
                        shoes.length,
                        (index) {
                          return SubCategModel(
                            mainCategName: 'shoes',
                            subCategName: shoes[index],
                            assetName: 'images/shoes/shoes$index.jpg',
                            subcategLabel: shoes[index],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            right: 0,
            bottom: 0,
            child: SliderBar(
              maincategName: 'shoes',
            ),
          ),
        ],
      ),
    );
  }
}
