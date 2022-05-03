import 'package:flutter/material.dart';
import 'package:sitewebtheo/accueil/projet.dart';
import 'package:sitewebtheo/constants.dart';


class affichageprojets extends StatelessWidget {
  const affichageprojets({
    Key? key, required this.projet,
  }) : super(key: key);

final Projet projet;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
          projet.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
          ),
          const Spacer(),
          Text(
            projet.description!,
            style: const TextStyle(height: 1.5),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          TextButton(onPressed: () {}, child: const Text("En savoir plus", style: TextStyle(color: primaryColor),))
        ]),
      );
  }
}

