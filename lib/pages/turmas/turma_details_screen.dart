import 'package:flutter/material.dart';
import 'package:simulados_app/widgets/custom_pdf_viewer.dart';
//import 'package:simulados_app/widgets/turma_detail.dart';

import 'models/turma_model.dart';

class TurmaDetailsScreen extends StatefulWidget {
  final Turma turma;

  const TurmaDetailsScreen({Key key, this.turma}) : super(key: key);

  @override
  _TurmaDetailsScreenState createState() => _TurmaDetailsScreenState();
}

class _TurmaDetailsScreenState extends State<TurmaDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          widget.turma.title,
          style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
      ),
      body: TurmaDetail(),
    );
  }

  Widget TurmaDetail() {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
              itemCount: widget.turma.simulados.length,
              itemBuilder: buildItem),
        ),
      ],
    );
  }

  Widget buildItem(BuildContext context, int index) {
    return Card(
      color: Colors.amber,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.assignment_turned_in),
                Expanded(
                    child: Text(
                  'Simulado ${index + 1}',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )),
                Text('Nota'),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                        '${widget.turma.simulados[index].quant_questoes} Questões')),
                Text('Responder')
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: (){
                      _showPDF(widget.turma.simulados[index].pdf);
                  },
                  color: Colors.red,
                  child: Text('PDF'),
                ),
                MaterialButton(
                  onPressed: (){},
                  color: Colors.blue,
                  child: Text('G1'),
                ),
                MaterialButton(
                  onPressed: (){},
                  color: Colors.green,
                  child: Text('G.2'),
                ),
                MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  child: Text('R'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showPDF(String url){
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=> CustomPDFViewer(url: url,) ));
  }
}
