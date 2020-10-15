import 'package:simulados_app/pages/gabaritos/models/gabaritos_model.dart';

class Simulados {
  String _id;
  String _descricao;
  int _quant_questoes;
  String _pdf;
  bool _disponivel;
  List<Gabaritos> _gabaritos;

  Simulados(
      {String id,
        String descricao,
        int quant_questoes,
        String pdf,
        bool disponivel,
        List<Gabaritos> gabaritos}) {
    this._id = id;
    this._descricao = descricao;
    this._quant_questoes = quant_questoes;
    this._pdf = pdf;
    this._disponivel = disponivel;
    this._gabaritos = gabaritos;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get descricao => _descricao;
  set descricao(String descricao) => _descricao = descricao;
  int get quant_questoes => _quant_questoes;
  set quant_questoes(int quant_questoes) => _quant_questoes = quant_questoes;
  String get pdf => _pdf;
  set pdf(String pdf) => _pdf = pdf;
  bool get disponivel => _disponivel;
  set disponivel(bool disponivel) => _disponivel = disponivel;
  List<Gabaritos> get gabaritos => _gabaritos;
  set gabaritos(List<Gabaritos> gabaritos) => _gabaritos = gabaritos;

  Simulados.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _descricao = json['descricao'];
    _quant_questoes = json['quant_questoes'];
    _pdf = json['pdf'];
    _disponivel = json['disponivel'];
    if (json['gabaritos'] != null) {
      _gabaritos = new List<Gabaritos>();
      json['gabaritos'].forEach((v) {
        _gabaritos.add(new Gabaritos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['descricao'] = this._descricao;
    data['quant_questoes'] = this._quant_questoes;
    data['pdf'] = this._pdf;
    data['disponivel'] = this._disponivel;
    if (this._gabaritos != null) {
      data['gabaritos'] = this._gabaritos.map((v) => v.toJson()).toList();
    }
    return data;
  }
}