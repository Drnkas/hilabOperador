import 'package:flutter/material.dart';
import 'package:hilab_operador/shared/widgets/workplace_widget.dart';
import '../../shared/themes/app_colors.dart';
import '../../shared/themes/app_images.dart';

class WorkplacePage extends StatelessWidget {
  const WorkplacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.teal,
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
            Positioned(
              child: Center(
                child: Container(
                  height: 400,
                  width: 380,
                  decoration: BoxDecoration(color: AppColors.layerOneBg, borderRadius: BorderRadius.circular(15),
                      boxShadow: [ BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3))
                      ]),
                  child: Positioned(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            AppImages.logo, width: 200, height: 200
                          ),
                        ),
                        WorkplaceWidget(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("entrar"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
    );
  }
}
