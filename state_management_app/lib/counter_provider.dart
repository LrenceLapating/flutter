import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';

// Step 1: Create a ChangeNotifier to manage state
class CounterNotifier extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}

// Step 2: Create a Riverpod provider for CounterNotifier
final counterProvider = ChangeNotifierProvider((ref) => CounterNotifier());
