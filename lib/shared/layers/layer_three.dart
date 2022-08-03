import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class LayerThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 584,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 59,
            top: 99,
            child: Text(
              "CPF",
              style: TextStyles.titleRegular,
            ),
          ),
          Positioned(
              left: 59,
              top: 129,
              child: Container(
                width: 310,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: "Insira seu CPF",
                    hintStyle: TextStyle(color: AppColors.hintText),
                  ),
                ),
              )),
          Positioned(
            left: 59,
            top: 199,
            child: Text(
              "Senha",
              style: TextStyles.titleRegular,
            ),
          ),
          Positioned(
              left: 59,
              top: 229,
              child: Container(
                width: 310,
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: "Insira sua senha",
                    hintStyle: TextStyle(color: AppColors.hintText),
                  ),
                ),
              )),
          Positioned(
              right: 60,
              top: 296,
              child: Text(
                "Esqueci minha senha",
                style: TextStyles.trailingBold,
              )),

          Positioned(
              top: 365,
              right: 60,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed("/workplace");
                },
                child: Container(
                  width: 99,
                  height: 35,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      "Entrar",
                      textAlign: TextAlign.center,
                      style: TextStyles.buttonBoldBackground,
                    ),
                  ),
                ),
              )),
          Positioned(
              top: 432,
              left: 59,
              child: Container(
                height: 0.5,
                width: 310,
                color: AppColors.inputBorder,
              )),
        ],
      ),
    );
  }
}