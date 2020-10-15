import 'package:http/http.dart' as http;

const baseUrl = "https://my-json-server.typicode.com/yvpaulo/simulados_flutter";

class API {
  static Future getTurmas() async{
    final url = baseUrl + "/turmas";
    final response = await http.get(url);
    if (response.statusCode == 200) {
     // print(response.statusCode);
      //print(json.decode(response.body));
      return response;
    } else {
      throw Exception("deu ruim status: ${response.statusCode}");
      //print(url);

    }

  }
}