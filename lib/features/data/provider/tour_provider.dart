// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:neobis_flutter_neotour/features/data/models/tours.dart';

// class TourProvider with ChangeNotifier {
//   List<Tour> _tours = [];

//   List<Tour> get tours => _tours;

//   Future<void> fetchTours() async {
//     final response =
//         await http.get(Uri.parse('https://muha-backender.org.kg/list-tours/'));

//     if (response.statusCode == 200) {
//       List<dynamic> jsonData = json.decode(response.body);
//       _tours = jsonData.map((json) => Tour.fromJson(json)).toList();
//       notifyListeners();
//     } else {
//       throw Exception('Failed to load tours');
//     }
//   }
// }
