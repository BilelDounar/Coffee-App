import 'package:coffee/config/assets/image_path.dart';
import 'package:coffee/modules/home/views/home_view.dart';
import 'package:coffee/utils/basic_utils.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

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
                flex: 12,
                child: Image.asset(onboardingBackground, fit: BoxFit.fill),
              ),
              Expanded(flex: 2, child: Container(color: Colors.black)),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 0.1, 0.2, 0.5],
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(1.0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.18,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              width: screenWidth,
              height: screenHeight * 0.2,
              child: Text(
                'Coffee so good, your taste buds will love it.',
                style: TextStyle(
                  fontSize: screenWidth * 0.08,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.002,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.16),
              width: screenWidth,
              height: screenHeight * 0.2,
              child: Text(
                'The best grain, the finest roast, the powerful flavor.',
                style: TextStyle(
                  fontSize: screenWidth * 0.033,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w400,
                  color: Color(0xffA9A9A9),
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            right: screenWidth * 0.1,
            left: screenWidth * 0.1,
            bottom: screenHeight * 0.05,
            child: InkWell(
              onTap:
                  () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                height: screenHeight * 0.07,
                decoration: BoxDecoration(
                  color: Color(0xffC67C4E),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color.fromARGB(255, 131, 80, 48),
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
