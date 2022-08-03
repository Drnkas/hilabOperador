import 'package:flutter/material.dart';
import '../themes/app_colors.dart';

class LayerOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 654,
      decoration: BoxDecoration(
        color: AppColors.layerOneBg,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0),
            bottomRight: Radius.circular(60.0)
        ),
      ),
    );
  }
}