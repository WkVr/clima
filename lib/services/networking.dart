import 'dart:convert';

import 'package:http/http.dart';

class NetworkHelper {
  NetworkHelper({this.url});

  final Uri url;

  Future<dynamic> getData() async {
    Response res = await get(url);
    return jsonDecode(res.body);
  }
}
