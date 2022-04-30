import 'package:flutter/material.dart';
import 'package:sitewebtheo/constants.dart';


class CercleAnime extends StatelessWidget {
  const CercleAnime({
    Key? key, required this.pourcentage, required this.Language,
  }) : super(key: key);

final double pourcentage;
final String Language;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0,end:pourcentage), 
            duration: defaultDuration, 
            builder: ((context, double value, child) => 
             Stack(
               fit: StackFit.expand,
               children: [
                 CircularProgressIndicator(
            value: value,
            color: primaryColor,
            backgroundColor: darkColor,
          ),
          Center(
            child: Text((value*100).toInt().toString()+ "%",
             style: Theme.of(context).textTheme.subtitle1,),
          )
               ],
             ))
            ),
        ),
        const SizedBox(height: defaultPadding/2),
        Text(
         Language,
         maxLines: 1,
         overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.subtitle2,)
      ],
    );
  }
}