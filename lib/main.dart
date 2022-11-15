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
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Rawa Pening Ambarawa';
  final String location = 'Ambarawa, Jawa Tengah';
  final String description =
      '''Rawa Pening menyajikan panorama danau yang membentang luas.
   Menempati empat wilayah kecamatan di Kabupaten Semarang, yaitu: 
   Kecamatan Bawen, Ambarawa,  Tuntang, dan Banyubiru. 
   Berada di cekungan antara Gunung Merbabu, Gunung Telomoyo dan Gunung Ungaran.
   Rawa Pening merupakan danau alami dengan luas sekitar 2.670 hektar.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Objek Wisata'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/Rawa_Pening.jpg',
              height: 250,
              width: 412,
              fit: BoxFit.fill,
            ),
            Container(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      this.location,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                Container(
                  width: 100,
                ),
                Icon(
                  Icons.star,
                  size: 30,
                  color: Colors.yellow,
                ),
                Text('5',
                    style: TextStyle(
                      fontSize: 18,
                    ))
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                this.description,
                style: TextStyle(
                  fontSize: 18,
                ),
                softWrap: true,
              ),
            )
          ],
        ));
  }
}
