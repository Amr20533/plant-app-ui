import 'package:plant_app/constants.dart';
import 'package:flutter/material.dart';

class BottomImageSlider extends StatelessWidget {
  const BottomImageSlider({required this.size,required this.image,required this.press,super.key});
  final Size size;
  final String image;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:kDefaultPadding,bottom:kDefaultPadding/2,top: kDefaultPadding/2),
      width: size.width * 0.8,
      height: 185,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image)
            ),
            borderRadius: BorderRadius.circular(10),

        )
    );
  }
}
