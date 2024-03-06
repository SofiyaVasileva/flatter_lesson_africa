// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CountriWig extends StatelessWidget {
  const CountriWig({super.key, required this.title_country, required this.photoPath_country, required this.area_country, required this.population_country});
  final String title_country;
  final String photoPath_country;
  final String area_country;
  final String population_country;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 5),
       decoration: BoxDecoration(border: Border.all(width: 1)),
       padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          Center(
            child: Text('${title_country}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),),
            ),
          Center(
            child: Image.network('${photoPath_country}'),
          ),
          Center(
            child: Text('Размер населения: ${population_country}.',
            softWrap: true,
            maxLines: 5,
            style: const TextStyle(fontSize: 12),
            ),
          ),
          Center(
            child: Text('Общая площадь: ${area_country}.',
            softWrap: true,
            maxLines: 5,
            style: const TextStyle(fontSize: 12),
            ),
          )
        ]
          
          
            ),
          );
  }
}