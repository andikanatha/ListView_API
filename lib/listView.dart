import 'package:flutter/material.dart';
import 'package:listview_flutter/userModel.dart';


class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
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

Widget avatar(int index){
    return CircleAvatar(
      radius: 24,
      child: Text(
        data[index].ShortName,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
  Widget textData(int index){
    return Expanded(child: Container(
      margin: EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            data[index].name,
            style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            child: Text(data[index].Jurusan),
          ),
        ],
      ),
    ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Listview"),),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: data.length,
        itemBuilder: (buildContext, index) {
          return GestureDetector(
            onTap: () => showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
              title: Text("Hapus Kontak"),
              content: Text("Anda yakin ingin menghapus kontak ${data[index].name}?"),
              actions: <Widget>[
                FlatButton(
                  child: Text("Ya"),
                  onPressed: (){
                    setState(() {
                      data.removeAt(index);
                    });
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text("Tidak"),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            )),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  avatar(index),
                  textData(index),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}