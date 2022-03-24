import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_provider/others/jsonprarse.dart';

class CallApi {
  static final String _url =
      "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ids=";
  getData(api_Id) async {
    var fullUrl = _url + api_Id;
    var response = await http.get(
      Uri.parse(fullUrl),
      headers: _setHeaders(),
    );

    try {
      if (response.statusCode == 200) {
        var data = response.body.substring(1, response.body.length - 1);
        print(data);
        LoginappParse loginappaparse = LoginappParse.fromJson(jsonDecode(data));
      } else {
        print(response.statusCode);
      }
    } catch (error) {
      print(error);
    }
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
}
