import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class DetailsItemCard extends StatelessWidget {
  const DetailsItemCard({required this.country,required this.title,required this.price,super.key});
  final String title;
  final String country;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(text: TextSpan(
              children: [
                TextSpan(text: '$title\n',style:Theme.of(context).textTheme.headlineMedium!.copyWith(color: kTextColor,fontWeight: FontWeight.bold)),
                 TextSpan(text: country,style:const TextStyle(color: kPrimaryColor,fontSize: 20,fontWeight: FontWeight.w300)),
              ]
          )),
          const Spacer(),
          Text('\$$price',style:Theme.of(context).textTheme.headlineSmall!.copyWith(color: kPrimaryColor))
        ],
      ),
    );
  }
}
