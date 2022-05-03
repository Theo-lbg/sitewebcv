import 'package:flutter/material.dart';
import 'package:sitewebtheo/accueil/affichage_projet.dart';
import 'package:sitewebtheo/accueil/projet.dart';
import 'package:sitewebtheo/constants.dart';
import 'package:sitewebtheo/responsive.dart';


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
          const Responsive(
          mobile: projetgridview(crossAxisCount: 1, childAspectRatio: 1.7,), 
          tablet: projetgridview(childAspectRatio: 1.1,),
          mobileLarge: projetgridview(crossAxisCount: 2),
          desktop: projetgridview())
      ],
    );
  }
}

class projetgridview extends StatelessWidget {
  const projetgridview({
    Key? key, this.crossAxisCount = 3 , this.childAspectRatio = 1.3,
  }) : super(key: key);

final int crossAxisCount;
final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: liste_projet.length,
        gridDelegate:
     SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      childAspectRatio: childAspectRatio,
      crossAxisSpacing: defaultPadding,
      mainAxisSpacing: defaultPadding,
    ),

    itemBuilder: (context, index) => affichageprojets(projet: liste_projet[index],) , 
        );
  }
}

