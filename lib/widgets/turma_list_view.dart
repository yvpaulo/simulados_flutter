//import 'package:flutter/cupertino.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:simulados_app/pages/turmas/models/turma_model.dart';
import 'package:simulados_app/pages/turmas/turma_details_screen.dart';
import 'package:simulados_app/services/api.dart';

class TurmaListView extends StatefulWidget {
  @override
  _TurmaListViewState createState() => _TurmaListViewState();
}

class _TurmaListViewState extends State<TurmaListView> {
  var turmas = new List<Turma>();
  _getTurmas(){
    API.getTurmas().then((response){
      setState(() {
        Iterable lista = json.decode(response.body);
        turmas = lista.map((model) => Turma.fromJson(model)).toList();
      });
    });
  }

  _TurmaListViewState(){
     _getTurmas();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: turmas != null ? turmas.length : 1,
      itemBuilder: buildItem,
    );
  }

  Widget buildItem(context, index) {
    return Container(
      margin: EdgeInsets.all(5),
      child: MaterialButton(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
        color: Colors.black87,
        elevation: 7.0,
        highlightElevation: 1.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        height: 100,
        onPressed: (){
          _showTurmaDetail(turma: turmas[index]);
        },
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.deepOrangeAccent,
              height: 100,
              width: 100,
              margin: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: <Widget>[
                  Text(
                    'T ${index + 1 }',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Icon(Icons.bookmark_border),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  turmas[index].title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber
                  ),
                  //style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                   "( ${turmas[index].simulados.length} Simulados )",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.amber
                  ),
                  //style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showTurmaDetail({Turma turma}){
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=>TurmaDetailsScreen(turma: turma,)));
  }
}
