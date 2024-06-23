import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

 @override
Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text('Jobsheet 5 Stateless Widget'),
          backgroundColor: Colors.blue, // Mengatur warna biru pada AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeksUtama(
                teks1: '',
                teks2: 'Daftar Absensi #113 Mobile Programming Lanjut',
              ),
              TeksUtama(
                teks1: '4. Adit Febri Nur Hidayat',
                teks2: 'NIM : STI202102123',
              ),
              TeksUtama(
                teks1: '5. Shafira Indes Prafitri',
                teks2: 'NIM : STI202102125',
              ),
              TeksUtama(
                teks1: '6. Zahwa Naca Syafika',
                teks2: 'NIM : STI202102132',
                backgroundColor: Colors
                    .green, // Menambahkan warna latar belakang bluegrey pada teks
              ),
              TeksUtama(
                teks1: '7. Rahayu Dwi Setiowati',
                teks2: 'NIM : STI202102133',
              ),
              TeksUtama(
                teks1: '8. Muarif Subekhi',
                teks2: 'NIM : STI202102135',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final Color? backgroundColor; // Menambahkan parameter backgroundColor

  const TeksUtama({
    Key? key,
    required this.teks1,
    required this.teks2,
    this.backgroundColor, // Menambahkan parameter backgroundColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color:
              backgroundColor, // Mengatur warna latar belakang sesuai dengan parameter
          child: Text(
            teks1,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 42, 12, 139),
            ),
          ),
        ),
        Container(
          // Menggunakan Container untuk menambahkan latar belakang
          color:
              backgroundColor, // Mengatur warna latar belakang sesuai dengan parameter
          child: Text(
            teks2,
            textDirection: TextDirection.ltr,
          ),
        ),
      ],
  );
}
} 