import 'package:flutter/material.dart';
import 'package:simulados_app/widgets/turma_list_view.dart';

class TurmasScreen extends StatefulWidget {
  @override
  _TurmasScreenState createState() => _TurmasScreenState();
}

class _TurmasScreenState extends State<TurmasScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

            appBar: AppBar(
              backgroundColor: Colors.black87,
              title: Text('Minhas Turmas',
                style: TextStyle(color: Colors.amber),

              ), centerTitle: true,
            ),
            body:TurmaListView(),
    );
  }
}
