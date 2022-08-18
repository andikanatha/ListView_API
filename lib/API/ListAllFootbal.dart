import 'package:flutter/material.dart';
import 'SpanyolModel.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;

import 'DetailListFootball.dart';

class ListAllFootball extends StatefulWidget {
  const ListAllFootball({Key? key}) : super(key: key);

  @override
  State<ListAllFootball> createState() => _ListAllFootballState();
}

class _ListAllFootballState extends State<ListAllFootball> {

  PremiereLeague? spanyolModel;
  bool isLoading = true;

  void getAllListSpanyol() async {
    setState(() {
      isLoading = false;
    });
    final res = await http.get(Uri.parse("https://www.thesportsdb.com/api/v1/json/2/search_all_teams.php?s=Soccer&c=Spain"));
    print("Response status: ${res.statusCode}");
    spanyolModel = PremiereLeague.fromJson(json.decode(res.body.toString()));
    print("team 0 : " + spanyolModel!.teams![0].strTeam.toString());
    setState(() {
      isLoading = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllListSpanyol();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: isLoading ? ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: spanyolModel!.teams!.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailListFootball(
                    teams: spanyolModel!.teams![index],
                  )));
                },
                child: Card(
                  margin: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.network(spanyolModel!.teams![index].strTeamBadge.toString(), width: 50, height: 50, ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(spanyolModel!.teams![index].strTeam.toString(), style: TextStyle(fontSize: 20),),
                            Text(spanyolModel!.teams![index].strLeague.toString(), style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              );
            },
          ) : CircularProgressIndicator(),
        ),
      ),
    );
  }

}