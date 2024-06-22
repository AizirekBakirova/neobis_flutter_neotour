import 'package:flutter/material.dart';
import 'package:neobis_flutter_neotour/features/data/fetch_data/fetch_tours.dart';
import 'package:neobis_flutter_neotour/features/data/models/tours.dart';

class TourProvider with ChangeNotifier {
  List<Tours> _tours = [];
  bool _isLoading = false;

  List<Tours> get tours => _tours;
  bool get isLoading => _isLoading;

  Future<void> loadTours() async {
    _isLoading = true;
    notifyListeners();

    try {
      _tours = await TourService().fetchTours();
    } catch (error) {
      print('Error loading tours: $error');
    }

    _isLoading = false;
    notifyListeners();
  }
}
