import 'package:coffee/config/assets/colors.dart';
import 'package:coffee/config/assets/image_path.dart';
import 'package:coffee/config/data/coffee_modele.dart';
import 'package:coffee/modules/home/widgets/coffee_card.dart';
import 'package:coffee/modules/home/widgets/home_searchbar.dart';
import 'package:coffee/utils/basic_utils.dart';
import 'package:coffee/utils/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = BasicUtils.getScreenWidth(context);
    final screenHeight = BasicUtils.getScreenHeight(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [lightbrown, darkbrown],
                    ),
                  ),
                ),
              ),
              Expanded(flex: 6, child: Container(color: Color(0xffF9F9F9))),
            ],
          ),
          Positioned(
            top: screenHeight * 0.1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              width: screenWidth,
              height: screenHeight * 0.08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText.basic(
                        text: 'Location',
                        fontSize: 12,
                        color: Color(0xffA9A9A9),
                      ),
                      CustomText.basic(
                        text: '10 rue de Grand Frais',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                  Container(
                    width: screenWidth * 0.15,
                    height: screenWidth * 0.15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(profilImage),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.2 ,
            right: 0 ,
            left: 0 ,
            child: HomeSearchbar(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            ),
          ),
          Positioned(
            top: screenHeight * 0.3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              width: screenWidth * 0.8,
              height: screenHeight * 0.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(bannerImage),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: screenWidth * 0.2,
                    height: screenHeight * 0.04,
                    decoration: BoxDecoration(
                      color: Color(0xffED5151),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: CustomText.basic(
                        text: 'Promo',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  CustomText.basic(
                    text: 'Buy one get \n one FREE',
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.51,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              width: screenWidth,
              height: screenHeight * 0.05,
              child: ListView.builder(
                itemCount: coffee_type.length,
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: screenHeight * 0.1,
                    width: screenWidth * 0.3,
                    // padding: EdgeInsets.only(left: screenWidth * 0.03),
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.03,
                    ),
                    decoration: BoxDecoration(
                      color: lightbrown.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffE5E5E5), width: 1),
                    ),
                    child: Center(
                      child: CustomText.basic(
                        text: coffee_type[index],
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              height: screenHeight * 0.42,
              width: screenWidth,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: screenWidth * 0.05,
                crossAxisSpacing: screenWidth * 0.05,
                childAspectRatio: 0.65,
                children:
                    coffeItemList
                        .map(
                          (item) => CoffeeCard(
                            name: item.name,
                            price: item.price,
                            description: item.description,
                            imagePath: item.imagePath,
                            note: item.note,
                          ),
                        )
                        .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
