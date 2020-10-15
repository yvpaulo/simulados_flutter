import 'turma_model.dart';

class TurmasList {
  List<Turma> _turmas;

  TurmasList({List<Turma> turmas}) {
    this._turmas = turmas;
  }

  List<Turma> get turmas => _turmas;
  set turmas(List<Turma> turmas) => _turmas = turmas;

  TurmasList.fromJson(Map<String, dynamic> json) {
    if (json['turmas'] != null) {
      _turmas = new List<Turma>();
      json['turmas'].forEach((v) {
        _turmas.add(new Turma.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._turmas != null) {
      data['turmas'] = this._turmas.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

