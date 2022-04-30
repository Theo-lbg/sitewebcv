import 'package:flutter/material.dart';

class Mesinfos extends StatelessWidget {
  const Mesinfos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:  1.23,
      child: Container(
      color: const Color(0xFF242438),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         const Spacer(),
          const CircleAvatar(
            radius: 65,
            backgroundImage: 
            AssetImage("assets/images/profil.jpg"),
          ),
            Text(
              "Lebègue Théo",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "Etudiant en Licence Professionelle qui cherche activement une entreprise",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              )
              
              ),
              const Spacer(),
        ],
        
        ),
      ));
  }
}