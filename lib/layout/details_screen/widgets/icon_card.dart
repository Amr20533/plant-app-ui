import 'package:plant_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class IconCard extends StatelessWidget {
  const IconCard({required this.icon,super.key});
  final String icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin:  EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: const EdgeInsets.all(kDefaultPadding/2),
      width: 62,height: 62,
      // alignment: Alignment.center,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset:const Offset(0,15),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22)
            ),
            const BoxShadow(
                offset: Offset(-15,-15),
                blurRadius: 20,
                color: Colors.white
            )]
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
