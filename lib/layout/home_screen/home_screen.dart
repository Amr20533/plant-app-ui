import 'package:plant_app/constants.dart';
import 'package:plant_app/layout/home_screen/widgets/body.dart';
import 'package:plant_app/layout/home_screen/widgets/k_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar:const kBottomNavigationBar(),
    );

  }
  AppBar buildAppBar(){
    return AppBar(backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset('assets/icons/menu.svg', color: Colors.white,),onPressed: (){},),
    );
  }

}
