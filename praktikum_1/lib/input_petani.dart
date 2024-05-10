import 'package:flutter/material.dart';
import 'package:json_to_list_flutter/models/petani.dart';

class InputPetani extends StatefulWidget {
  @override
  _InputPetaniState createState() => _InputPetaniState();
}

class _InputPetaniState extends State<InputPetani> {
  String? nama;
  String? nik;
  String? alamat;
  int usia = 0;
  String pekerjaan = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Petani'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nama'),
              onChanged: (value) {
                setState(() {
                  nama = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'NIK'),
              onChanged: (value) {
                setState(() {
                  nik = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Alamat'),
              onChanged: (value) {
                setState(() {
                  alamat = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Usia'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  usia = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Pekerjaan'),
              onChanged: (value) {
                setState(() {
                  pekerjaan = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                Petani newPetani = Petani(
                  nama: nama,
                  nik: nik,
                  alamat: alamat,
                  usia: usia,
                  pekerjaan: pekerjaan,
                );
                // Lakukan sesuatu dengan data petani baru
                Navigator.pop(context, newPetani);
              },
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}