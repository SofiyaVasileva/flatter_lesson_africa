import 'package:flutter/material.dart';
import 'package:vasilueva_africa/modules/countries.dart';
import 'package:vasilueva_africa/components/country_comp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(title: const Text("African Countries", 
     style: TextStyle( 
     ),
      ),
      backgroundColor: Colors.cyan,
    ),

      body: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10
        ),
        itemCount: countriesList.length, 
        itemBuilder: (BuildContext context, int index) {
          return CountriWig(title_country: countriesList[index].title, photoPath_country: countriesList[index].photoPath, area_country: countriesList[index].area, population_country: countriesList[index].population,);
            }
          )
       )
    );
  }
}