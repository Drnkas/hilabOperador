import 'package:flutter/material.dart';
import '../../shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.bg1),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Center(child: Image.asset((
              AppImages.logo
          )),)
        ],
      )
    );
  }
}
