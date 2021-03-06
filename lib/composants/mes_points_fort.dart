import 'package:flutter/material.dart';
import 'package:sitewebtheo/composants/animation_progression.dart';
import 'package:sitewebtheo/constants.dart';


class competences extends StatelessWidget {
  const competences({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
      
      Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Mes points forts", style: Theme.of(context).textTheme.subtitle2,),
        ),

        // ignore: prefer_const_literals_to_create_immutables
                    Row (children: [
    const Expanded(
     child: CercleAnime(
       pourcentage: 0.6, 
       Language: "Flutter"),
       ),
       const SizedBox(width: defaultPadding),
     const Expanded(
     child: CercleAnime(
       pourcentage: 0.8, 
       Language: "Java"),
       ),
       const SizedBox(width: defaultPadding),
       const Expanded(
     child: CercleAnime(
       pourcentage: 0.6, 
       Language: "Git"),
       ),
       
       ],)
      ]);
  }
}





