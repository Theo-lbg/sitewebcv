import 'package:flutter/material.dart';
import 'package:sitewebtheo/constants.dart';


class LignedeprogressionAnimer extends StatelessWidget {
  const LignedeprogressionAnimer({
    Key? key, required this.pourcentage, required this.dev,
  }) : super(key: key);

  final double pourcentage;
  final String dev;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
      tween: Tween<double>(begin: 0,end: pourcentage), 
      duration: defaultDuration, 
      builder: (context, double value, child) =>  Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                dev, 
                style: const TextStyle(color: Colors.white),
                ),
                Text((value*100).toInt().toString()+"%"),
              ],),
          const SizedBox(height: defaultPadding/2),
          LinearProgressIndicator(
            value: value,
            color: primaryColor,
            backgroundColor: darkColor,
          ),
        ],
      ),),
    );
  }
}
