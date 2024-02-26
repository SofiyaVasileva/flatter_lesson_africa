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
        children: List.generate(countriesList.length, (index) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(countriesList[index].title, style: const TextStyle(fontSize: 22)),
                    Image.network(countriesList[index].photoPath),
                    Text("Размер населения: ${countriesList[index].population}", style: const TextStyle(fontSize: 22)),
                    Text("Общая площадь: ${countriesList[index].area}", style: const TextStyle(fontSize: 22))
                  ],
                )
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
 Country(2, "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Angola.svg/640px-Flag_of_Angola.svg.png", "Республика Ангола", "1 246 700", "25 021 974"),
 Country(3, "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Benin.svg/640px-Flag_of_Benin.svg.png", "Республика Бенин", "112 622", "10 315 244"),
 Country(4, "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_Botswana.svg/640px-Flag_of_Botswana.svg.png", "Республика Ботсвана", "581 726", "2 262 485"),
 Country(5, "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Flag_of_Burkina_Faso.svg/640px-Flag_of_Burkina_Faso.svg.png", "Буркина-Фасо", "274 000", "18 450 494"),
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