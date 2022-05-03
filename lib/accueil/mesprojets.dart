import 'package:flutter/material.dart';
import 'package:sitewebtheo/accueil/affichage_projet.dart';
import 'package:sitewebtheo/accueil/projet.dart';
import 'package:sitewebtheo/constants.dart';


class mesprojets extends StatelessWidget {
  const mesprojets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mes Projets: ",
          style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding,),
          GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: liste_projet.length,
        gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
          ),

          itemBuilder: (context, index) => affichageprojets(projet: liste_projet[index],) , 
        ),
      ],
    );
  }
}

