import 'package:plant_app/constants.dart';
import 'package:flutter/material.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({required this.title,required this.press,super.key});
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(height: 24,
            padding: const EdgeInsets.only(left: kDefaultPadding / 4, ),
            child: Stack(
              children: [
                Text(title,style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                Positioned(
                  bottom: 0,left: 0,right: 0,
                  child: Container(
                    margin: const EdgeInsets.only(right: kDefaultPadding / 4 ),
                    height: 7,
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: press,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding / 4 ),

              alignment:Alignment.center,
              height: 20,width: 60,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child:const Text('More',style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );

  }
}
