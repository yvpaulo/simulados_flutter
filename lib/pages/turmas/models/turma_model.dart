import 'package:simulados_app/pages/simulados/models/simulados_model.dart';

class Turma {
  String _id;
  String _title;
  String _categoria;
  String _descricao;
  List<Simulados> _simulados;

  Turma(
      {String id,
        String title,
        String categoria,
        String descricao,
        List<Simulados> simulados}) {
    this._id = id;
    this._title = title;
    this._categoria = categoria;
    this._descricao = descricao;
    this._simulados = simulados;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get title => _title;
  set title(String title) => _title = title;
  String get categoria => _categoria;
  set categoria(String categoria) => _categoria = categoria;
  String get descricao => _descricao;
  set descricao(String descricao) => _descricao = descricao;
  List<Simulados> get simulados => _simulados;
  set simulados(List<Simulados> simulados) => _simulados = simulados;

  Turma.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _categoria = json['categoria'];
    _descricao = json['descricao'];
    if (json['simulados'] != null) {
      _simulados = new List<Simulados>();
      json['simulados'].forEach((v) {
        _simulados.add(new Simulados.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['title'] = this._title;
    data['categoria'] = this._categoria;
    data['descricao'] = this._descricao;
    if (this._simulados != null) {
      data['simulados'] = this._simulados.map((v) => v.toJson()).toList();
    }
    return data;
  }
}