import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
     appBar: AppBar(title: const Text("African Countries", style: TextStyle(
      ),
      ),
      backgroundColor: Colors.cyan,
    ),
      body: Center(
        child: GridView.count(crossAxisCount: 2,
        children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            );
          }
        )
      ),
    )
    );
  }
}

class Country{
  int id;
  String title;
  String photoPath;
  String area;
  String population;
  Country(this.id, this.photoPath, this.title, this.area, this.population);
}

List<Country> countriesList = [
 Country(1, "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_Algeria.svg/640px-Flag_of_Algeria.svg.png", "Алжирская Народная Демократическая Республика", "2 381 740", "39 666 519"),
 Country(2, "", "", "", ""),
 Country(3, "", "", "", ""),
 Country(4, "", "", "", ""),
 Country(5, "", "", "", ""),
 Country(6, "", "", "", ""),
 Country(7, "", "", "", ""),
 Country(8, "", "", "", ""),
 Country(9, "", "", "", ""),
 Country(10, "", "", "", ""),
 Country(11, "", "", "", ""),
 Country(12, "", "", "", ""),
 Country(13, "", "", "", ""),
 Country(14, "", "", "", ""),
 Country(15, "", "", "", "")
];