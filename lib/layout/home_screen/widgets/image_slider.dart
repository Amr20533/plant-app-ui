import 'package:plant_app/constants.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({required this.size,required this.image,required this.country,required this.title,required this.price,required this.press,super.key});
  final Size size;
  final String image,title,country;
  final int price;
  final Function()? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(left:kDefaultPadding,bottom:kDefaultPadding),
        width: size.width * 0.4,

        child: Column(
          children: [
          Container(
            width: size.width * 0.4,height: 190,
            decoration: BoxDecoration(
                borderRadius:const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                image: DecorationImage(fit: BoxFit.cover ,image: AssetImage(image))
              ),
            ),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius:const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                  boxShadow: [
                  BoxShadow(
                    offset:const Offset(0,10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23)
                  )
                ]
              ),
              child: Row(
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$title\n',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 14,fontWeight: FontWeight.w700),

                      ),TextSpan(
                        text: country,style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),

                      ),

                    ]
                  )),
                  const Spacer(),
                  Text('\$$price',  style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kPrimaryColor, fontSize: 18),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
