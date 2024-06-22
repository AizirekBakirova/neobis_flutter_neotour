import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:neobis_flutter_neotour/features/data/models/tours.dart';

class TourService {
  static const String url =
      'https://muha-backender.org.kg/category-tour/popular/';

  Future<List<Tours>> fetchTours() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      return body.map((dynamic item) => Tours.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load tours');
    }
  }
}
