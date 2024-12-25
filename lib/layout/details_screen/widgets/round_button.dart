import 'package:plant_app/constants.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({required this.pressed,super.key});
  final VoidCallback pressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width /2,
          height: 84,
          child: MaterialButton(
            shape:const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20)),

            ),
            color: kPrimaryColor,
            onPressed: pressed,child: const Text('Buy Now',style: TextStyle(color: Colors.white,fontSize: 16),),),
        ),
        Expanded(child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
          ),
          child:const Text('Description',style: TextStyle(color: Colors.black,fontSize: 18),),
        ))
      ],
    );
  }
}
