import 'package:flutter/material.dart';

class TurmaDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text('turma.descricao'),
        ListView.builder(itemBuilder: null)
      ],
    );
  }
}
