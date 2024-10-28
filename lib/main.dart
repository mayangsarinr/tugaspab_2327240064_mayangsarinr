import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text(
            "Galeri foto",
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Image.network(
                "https://picsum.photos/id/88/300/200",
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Jalan Di Barcelona",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            //Border(top: BorderSide(color: Colors.grey)),
            Container(
              margin: EdgeInsets.only(right: 10,left: 10),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey))),
              child: const Row(
                children: [
                  Icon(
                    Icons.place,
                    color: Colors.red,
                  ),
                  Text("Lokasi:Barcelona,Spanyol"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10,left: 10),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: const Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.blue,
                  ),
                  Text("Publikasi:13 Agustus 2013"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [ Padding(
                padding: EdgeInsets.only(right: 16,left: 16),
                child: Text(
                  "Deskripsi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16,left: 16),
              child: Text(
                "Sebuah persimpangan jalan di Barcelona,Spanyol.Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda,menciptakan pemandangan yang sibuk dan energik.",textAlign:TextAlign.justify,),
            )
          ],
        ),
      ),
    );
  }
}