import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:listview_flutter/itemList.dart';
import 'package:listview_flutter/userModel.dart';

class ListViewActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListViewActivityState();
}

class ListViewActivityState extends State<ListViewActivity> {
  List<UserModel> data = [
    UserModel(1, "AI", "Adhanafi Ilyasa", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(2, "AA", "Ahmad Aziz", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(3, "AR", "Akbar Rizqullah", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(4, "AA", "Alwan Athallah", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(5, "AI", "Amri Iqra", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(6, "SA", "Sejati Adli", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(7, "AS", "Andika Setya", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(8, "AK", "Antariksa Kusuma", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(9, "AR", "Azzra Rienov", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(10, "BS", "Bayu Septian", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(11, "BN", "Bhre Nabil", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(12, "BA", "Bimo Adi", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(13, "DS", "Daffa Syauqi", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(14, "DG", "Danar Gading", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(15, "DB", "Dimas Bagus", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(16, "FH", "Firdaus Hafidz", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(17, "HA", "Hegel Al Rafli", "Pengembangan Peranggkat Lunak dan Game"),
    UserModel(138, "HF", "Hibatullah Fawwaz", "Pengembangan Peranggkat Lunak dan Game"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan,
        title: Text(
          "Data Siswa PPLG 1",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView.builder(
            padding: EdgeInsets.only(bottom: 24),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemUser(index, data[index], (dataModel) {
                onListClick(dataModel);
              });
            }),
      ),
    );
  }

  onListClick(UserModel dataUser) {
    print("Data: " + dataUser.name);
  }
}