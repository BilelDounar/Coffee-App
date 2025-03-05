import 'package:coffee/modules/home/views/home_view.dart';
import 'package:coffee/utils/basic_utils.dart';
import 'package:coffee/utils/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  final String name;
  final String description;
  final double price;
  final String imagePath;
  final double note;

  const CoffeeCard({
    super.key,
    required this.name,
    required this.price,
    required this.description,
    required this.imagePath,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = BasicUtils.getScreenWidth(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.02,
        vertical: screenWidth * 0.02,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20 + screenWidth * 0.02),

        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  width: 65,
                  height: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 3,
                  left: 7,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffFBBE21),
                        size: screenWidth * 0.045,
                      ),
                      CustomText.basic(
                        text: note.toString(),
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText.basic(
                  text: name,
                  fontSize: 16,
                  color: Color(0xff2F2D2C),
                  fontWeight: FontWeight.w600,
                ),
                CustomText.basic(
                  text: description,
                  fontSize: 12,
                  color: Color(0xff9B9B9B),
                  fontWeight: FontWeight.w400,
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText.basic(
                      text: '\$ $price',
                      fontSize: 18,
                      color: Color(0xff2F4B4E),
                      fontWeight: FontWeight.w600,
                    ),
                    InkWell(
                      onTap:
                          () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomeView()),
                          ),
                      child: InkWell(
                        onTap:
                            () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeView(),
                              ),
                            ),
                        child: Container(
                          height: screenWidth * 0.1,
                          width: screenWidth * 0.1,
                          decoration: BoxDecoration(
                            color: Color(0xffC67C4E),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
