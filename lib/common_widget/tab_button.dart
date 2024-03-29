import 'package:flutter/material.dart';
import 'package:home_made/common/color_extension.dart';

class TabButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String icon;
  final bool isSelected;
  const TabButton({super.key, required this.title, required this.onTap, required this.icon, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      onTap: onTap,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(icon, width: 50, height: 25, color: isSelected ? TColor.primaryText : TColor.placeholder,),
        const SizedBox(height: 4,),
        Text(title, style: TextStyle(color: isSelected ? TColor.primaryText : TColor.placeholder, fontSize: 14, fontWeight: FontWeight.w500),)
      ],
      )
    );
  }
}