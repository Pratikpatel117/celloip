import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
   ActionButton({super.key, required this.backcolorCode, required this.title, required this.titleColorCode});
  int backcolorCode;
  String title;
  int titleColorCode;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Color(backcolorCode),
      ),
      margin: EdgeInsets.only(top: 10,bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 82,vertical: 5),
      child: Text(
        title,
        style: TextStyle(
            color: Color(titleColorCode),
            fontSize: 15,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
