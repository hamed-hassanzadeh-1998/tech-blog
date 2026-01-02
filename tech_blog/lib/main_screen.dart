import 'package:flutter/material.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/my_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
             Image(
              image: Assets.images.logo.provider(),
              height: size.height / 13.6,
              ),
             Icon(Icons.search)
              ],
            ),
              Stack(
                children: [
                  Container(
                    width: size.width / 1.19,
                    height: size.height / 4.2,
                    decoration: BoxDecoration(
                      color: SolidColors.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                       image: DecorationImage(
                        image: Image(image: Assets.images.programming.provider()).image,
                        fit: BoxFit.cover,
                       ),
                    ),
                  ),
                  Container(
                    width: size.width / 1.19,
                    height: size.height / 4.2,
                    decoration: BoxDecoration(
                      color: SolidColors.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                       gradient: LinearGradient(
                        colors: GradientColors.homePosterCoverGradiant,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                       ),
                    ),
                  )
                ],
              )
          ], 
        ),
      ),
    );
  }
}