import 'package:flutter/material.dart';
import 'package:sitewebtheo/composants/animation_ligne_progression.dart';
import 'package:sitewebtheo/constants.dart';


class Langagedev extends StatelessWidget {
  const Langagedev({
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
          child: Text("Développement",style: Theme.of(context).textTheme.subtitle2,),
        ),
        const LignedeprogressionAnimer(pourcentage: 0.8,dev: "Java",),
        const LignedeprogressionAnimer(pourcentage: 0.6,dev: "Flutter",),
        const LignedeprogressionAnimer(pourcentage: 0.6,dev: "Bash",),
        const LignedeprogressionAnimer(pourcentage: 0.6,dev: "Git",),
        const LignedeprogressionAnimer(pourcentage: 0.4,dev: "C",),
        const LignedeprogressionAnimer(pourcentage: 0.5,dev: "Sql",)
      ],
    );
  }
}

