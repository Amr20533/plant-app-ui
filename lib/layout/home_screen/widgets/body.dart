import 'package:plant_app/constants.dart';
import 'package:plant_app/layout/details_screen/details_screen.dart';
import 'package:plant_app/models/plant_model.dart';
import 'package:plant_app/layout/home_screen/widgets/bottom_image_slider.dart';
import 'package:plant_app/layout/home_screen/widgets/header_with_search_box.dart';
import 'package:plant_app/layout/home_screen/widgets/image_slider.dart';
import 'package:plant_app/layout/home_screen/widgets/title_with_more_btn.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
     Body({super.key});
     final List<PlantModel> plants =PlantModel.plantChild;
     final List<String> bottomImages =[
       "assets/images/bottom_img_1.png",
       "assets/images/bottom_img_2.png",
     ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size:size),
          const SizedBox(height: 40,),
          TitleWithMoreBtn(title: 'Recommended',press: (){},),
          Padding(
            padding:const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: SizedBox(
              height: size.height * 0.32,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: plants.length,
                padding: const EdgeInsets.only(right: kDefaultPadding),
                itemBuilder: (context,index)=>ImageSlider(
                  press: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> DetailsScreen(plant:plants[index])));
                  },
                  size: size,
                  country: plants[index].country,
                  image: plants[index].image,
                  price: plants[index].price,
                  title: plants[index].title,
                ),


              ),
            ),
          ),
          TitleWithMoreBtn(title: 'Featured Plants',press: (){},),
          Padding(
            padding:const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: SizedBox(
              height: size.height * 0.3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: const EdgeInsets.only(right: kDefaultPadding),
                itemCount: bottomImages.length,
                itemBuilder: (context,index)=>BottomImageSlider(
                  press: (){},
                  size: size,
                  // country: plants[index].country,
                  image: bottomImages[index],
                  // price: plants[index].price,
                  // title: plants[index].title,
                ),


              ),
            ),
          ),

        ],
      ),
    );
  }

}

