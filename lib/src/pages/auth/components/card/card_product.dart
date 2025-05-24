import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 75,
        height: 75,
        child:Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.00),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height:40,
                  child: Container(
                    color: CustomColors.greenAuxiliarColor,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/fruits/apple')),
                    ),
                  ),
                ),
                //Todo espaçamaneto entre box
                SizedBox(height: 8,),
                SizedBox()
              ],
            ),
          ),

        ),
      )
    );
  }


}
