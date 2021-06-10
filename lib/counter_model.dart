import 'package:flutter/foundation.dart';

class CounterModel with ChangeNotifier
{
  int _count = 0;

  void increment(){
    _count++;
    notifyListeners();
  }

  void decrement(){
    _count--;
    notifyListeners();
  }

  int get count => _count;
}