import 'package:flutter/material.dart';
import 'package:json_to_list_flutter/detail_petani.dart';
import 'package:json_to_list_flutter/models/petani.dart';
import 'package:json_to_list_flutter/Service/apistatic.dart';

class PetaniPage extends StatefulWidget {
  @override
  _PetaniPageState createState() => _PetaniPageState();
}

class _PetaniPageState extends State<PetaniPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Petani"),
      ),
      body: FutureBuilder<List<Petani>>(
        future: ApiStatic.getPetani(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            List<Petani> listPetani = snapshot.data!;
            return Container(
              padding: EdgeInsets.all(5),
              child: ListView.builder(
                itemCount: listPetani.length,
                itemBuilder: (BuildContext context, int index) => Card(
                  elevation: 2,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => DetailPetaniPage(
                            petani: listPetani[index],
                          ),
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      child: Text(
                        '${listPetani[index].nama?.substring(0, 1)}',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    title: Text('${listPetani[index].nama}'),
                    subtitle: Text('${listPetani[index].alamat}'),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}