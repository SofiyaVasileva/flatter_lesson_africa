import 'package:flutter/material.dart';

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
     appBar: AppBar(title: const Text("African Countries", style: TextStyle(
      ),
      ),
      backgroundColor: Colors.cyan,
    ),
      body: Center(
        child: GridView.builder(padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 150
      ),
      itemCount: countriesList.length, 
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
                    children: [
                      Text(countriesList[index].title, style: const TextStyle(fontSize: 22)),
                      Image.network(countriesList[index].photoPath),
                      Text("Размер населения: ${countriesList[index].population}", style: const TextStyle(fontSize: 15)),
                      Text("Общая площадь: ${countriesList[index].area}", style: const TextStyle(fontSize: 15))
                    ],
                  ),
             );
            }
          )
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
 Country(6, "https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Flag_of_Burundi.svg/640px-Flag_of_Burundi.svg.png", "Республика Бурунди","27 830	","11 178 921"),
 Country(7, "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Flag_of_Gabon.svg/640px-Flag_of_Gabon.svg.png", "Габонская республика","267 668","1 725 292"),
 Country(8, "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_The_Gambia.svg/640px-Flag_of_The_Gambia.svg.png", "Республика Гамбия","10 380","1 990 924"),
 Country(9, "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Ghana.svg/640px-Flag_of_Ghana.svg.png", "Республика Гана","238 534","27 409 893"),
 Country(10, "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Flag_of_Guinea.svg/640px-Flag_of_Guinea.svg.png", "Гвинейская Республика","245 857","12 608 590"),
 Country(11, "https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Guinea-Bissau.svg/640px-Flag_of_Guinea-Bissau.svg.png", "Республика Гвинея-Бисау","36 125","1 844 325"),
 Country(12, "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Flag_of_Djibouti.svg/640px-Flag_of_Djibouti.svg.png", "Республика Джибути","23 200","887 861"),
 Country(13, "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/640px-Flag_of_Egypt.svg.png", "Арабская Республика Египет","1 001 449","87 266 562"),
 Country(14, "https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Flag_of_Zambia.svg/640px-Flag_of_Zambia.svg.png", "Республика Замбия","752 614","15 473 905"),
 Country(15, "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Flag_of_Zimbabwe.svg/640px-Flag_of_Zimbabwe.svg.png", "Республика Зимбабве","390 757","15 602 751")
];