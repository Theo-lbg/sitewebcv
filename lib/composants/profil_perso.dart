import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sitewebtheo/constants.dart';

class ProfilPerso extends StatelessWidget {
  const ProfilPerso({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(padding: 
     const EdgeInsets.symmetric(vertical: defaultPadding),
    child: Text(
      "Profil Personnel",
      style: Theme.of(context).textTheme.subtitle2,
    ),
    ),
    const iconperso(text: "Expérience Professionnel"),
    const iconperso(text: "Sérieux"),
    const iconperso(text: "Motivé et Dynamique")
      ],
    );
  }
}

class iconperso extends StatelessWidget {
  const iconperso({
    Key? key, required this.text,
  }) : super(key: key);


final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2 ),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          const SizedBox(width: defaultPadding / 2,),
           Text(text),


        ],
      ),
    );
  }
}


