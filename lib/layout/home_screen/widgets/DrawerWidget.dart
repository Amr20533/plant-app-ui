import 'package:plant_app/constants.dart';
import 'package:flutter/material.dart';
enum MenuItem{DetailsPage,MainPage,aboutPage,settings}
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Container(
        margin: const EdgeInsets.only(top: 30),
        color:kPrimaryColor,
        child: Column(
          children: [
            buildMenuItem(context,title:'Main Page',icon:Icons.home,item:MenuItem.MainPage),
            buildMenuItem(context,title:'Details Page',icon:Icons.details_outlined,item:MenuItem.DetailsPage),
            buildMenuItem(context,title:'About',icon:Icons.warning,item:MenuItem.aboutPage),
            buildMenuItem(context,title:'Settings',icon:Icons.settings,item:MenuItem.settings),

          ],
        ),
      ),
    );
  }
}
Widget buildMenuItem(BuildContext context,
    {required String title,required IconData icon,required MenuItem item}){
  const Color color=Colors.white;
  return Material(
    color:Colors.transparent,
    child: InkWell(
      onTap:(){},
      child: ListTile(
        leading:Icon(icon,size:20,color:color,),
        selectedTileColor:const Color(0xFF7589A2),
        title:Text(title,style:const TextStyle(fontSize:18,color:color)),
      ),
    ),
  );
}