import 'package:flutter/material.dart';
import 'package:sitewebtheo/constants.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center (
      child: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Drawer(
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio:  1.23,
                      child: Container(
                      color: const Color(0xFF242438),
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: 
                            AssetImage("sitewebtheo\assets\images\profil.jpg"),
                          ),
                            Text(
                              "Lebègue Théo",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            const Text("Etudiant en Licence Professionelle qui cherche activement une entreprise"),
                        ],
                        
                        ),
                      ))
                  ],
                )
                )
             ),
            Expanded(
              flex: 7,
              child: Container(
              color: Colors.blue ,)
        ),
        ],
    ),
    ),
  )
  );
}

















}