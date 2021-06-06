import '../models/userpostmodel.dart';
import '../viewmodels/userviewmodel.dart';
import 'package:flutter/material.dart';

class HalamanInput extends StatefulWidget {
  @override
  _HalamanInputState createState() => _HalamanInputState();
}

class _HalamanInputState extends State {
  TextEditingController namaController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController alamatController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Input"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TextField(
              controller: namaController,
              decoration: new InputDecoration(
                  hintText: "Nama Lengkap", labelText: "Nama"),
            ),
            TextField(
              controller: emailController,
              decoration:
                  new InputDecoration(hintText: "Email", labelText: "Email"),
            ),
            TextField(
              controller: alamatController,
              decoration:
                  new InputDecoration(hintText: "Alamat", labelText: "Alamat"),
            ),
            ElevatedButton(
                child: Text("Simpan"),
                onPressed: () {
                  UserpostModel commRequest = new UserpostModel();
                  commRequest.namaUser = namaController.text;
                  commRequest.emailUser = emailController.text;
                  commRequest.alamatUser = alamatController.text;
                  UserViewModel()
                      .postUser(userpostModelToJson(commRequest))
                      .then((value) => print("Mantab"));
                })
          ],
        ),
      ),
    );
  }
}
