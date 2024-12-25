import 'package:plant_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({required this.size,super.key});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //it will cover 20% of our screen total height
      height:size.height * 0.2,
      child: Stack(clipBehavior: Clip.none,
        children: [
          Container(
            margin:const EdgeInsets.only(bottom: kDefaultPadding),

            height: size.height * 0.8 -27,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36),bottomRight: Radius.circular(36),),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                children: [
                  Text('Hi There!',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white)),
                  const Spacer(),
                  Image.asset('assets/images/logo.png', scale: 1.6,),
                ],
              ),
            ),
          ),
          Positioned(
              bottom:0,left: 0,
              right: 0,
              child:Container(
                alignment: Alignment.center,
                margin:const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding:const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(
                        offset: const Offset(0,10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23)
                    )]
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged:(value){},
                        decoration: InputDecoration(
                          hintText:'Search',
                          hintStyle: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5)
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,

                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/icons/search.svg'),

                  ],
                ),
              ) ),
        ],
      ),
    );

  }
}
