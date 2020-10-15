class Gabaritos {
  String _id;
  bool _comentado;
  String _pdf;
  bool _disponivel;

  Gabaritos({String id, bool comentado, String pdf, bool disponivel}) {
    this._id = id;
    this._comentado = comentado;
    this._pdf = pdf;
    this._disponivel = disponivel;
  }

  String get id => _id;
  set id(String id) => _id = id;
  bool get comentado => _comentado;
  set comentado(bool comentado) => _comentado = comentado;
  String get pdf => _pdf;
  set pdf(String pdf) => _pdf = pdf;
  bool get disponivel => _disponivel;
  set disponivel(bool disponivel) => _disponivel = disponivel;

  Gabaritos.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _comentado = json['comentado'];
    _pdf = json['pdf'];
    _disponivel = json['disponivel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['comentado'] = this._comentado;
    data['pdf'] = this._pdf;
    data['disponivel'] = this._disponivel;
    return data;
  }
}