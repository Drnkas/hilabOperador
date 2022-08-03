import 'package:flutter/material.dart';
import 'package:hilab_operador/shared/themes/app_text_styles.dart';
import '../themes/app_colors.dart';

class WorkplaceWidget extends StatefulWidget {
  const WorkplaceWidget({Key? key}) : super(key: key);

  @override
  State<WorkplaceWidget> createState() => _WorkplaceWidgetState();
}

class _WorkplaceWidgetState extends State<WorkplaceWidget> {

  List<DropdownMenuItem<String>> get listItemsDropWorkplace{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Pague Menos"),value: "0"),
      DropdownMenuItem(child: Text("Promofarma"),value: "1"),
      DropdownMenuItem(child: Text("Vale Verde"),value: "2"),
      DropdownMenuItem(child: Text("Nissei"),value: "3"),
    ];
    return menuItems;
  }

  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 50,
      padding: EdgeInsets.all(25),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.transparent,
          ),
        hint: Text(
          "Local de trabalho",
        style: TextStyles.buttonBoldPrimary,
      ),
      dropdownColor: AppColors.layerOneBg,
        value: selectedItem,
        onChanged: (String? value) {
          setState(() {
            selectedItem = value;
          });
        },
        items: listItemsDropWorkplace
      )
    );
  }
}
