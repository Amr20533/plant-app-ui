import 'package:plant_app/constants.dart';
import 'package:plant_app/layout/details_screen/widgets/details_item_card.dart';
import 'package:plant_app/layout/details_screen/widgets/icon_card.dart';
import 'package:plant_app/layout/details_screen/widgets/round_button.dart';
import 'package:plant_app/models/plant_model.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({required this.plant,super.key});
  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
              child: SizedBox(
                height: size.height * 0.74,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child:Padding(
                      padding: const EdgeInsets.only(top: kDefaultPadding * 2),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                                child: IconButton(onPressed: ()=>Navigator.pop(context), icon:SvgPicture.asset('assets/icons/back_arrow.svg')),
                              )),
                          // const Spacer(),
                          const IconCard(icon: 'assets/icons/sun.svg',),
                          const IconCard(icon: 'assets/icons/icon_2.svg',),
                          const IconCard(icon: 'assets/icons/icon_3.svg',),
                          const IconCard(icon: 'assets/icons/icon_4.svg',),
                        ],
                      ),
                    )),
                    Container(
                      height: size.height * 0.8,width: size.width * 0.75,
                      decoration: BoxDecoration(
                          borderRadius:const BorderRadius.only(topLeft: Radius.circular(63),bottomLeft: Radius.circular(63)),
                          image:const DecorationImage(
                              alignment: Alignment.centerLeft,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/img.png')
                          ),
                          boxShadow: [
                            BoxShadow(
                                offset:const Offset(0,10),
                                blurRadius: 60,
                                color: kPrimaryColor.withOpacity(0.29)
                            )]
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // bottom card item
            DetailsItemCard(title:plant.title ,country:plant.country ,price:plant.price.toString() ,),
            const SizedBox(height: kDefaultPadding,),
             RoundButton(pressed: (){},)
          ],
        ),
      )
    );
  }
}
