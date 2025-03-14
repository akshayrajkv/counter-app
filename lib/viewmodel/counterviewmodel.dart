import 'package:counterapp/model/counter_model.dart';
import 'package:counterapp/repository/counter_repo.dart';
import 'package:flutter/material.dart';

class Counterviewmodel extends ChangeNotifier {

  final CounterModel _counter =CounterModel();
  final CounterRepo _repo =CounterRepo();

int get count =>_counter.count;

void increment(){
  _counter.count = _repo.increment(_counter.count);
  notifyListeners();
}

void decrement(){
  _counter.count = _repo.decrement(_counter.count);
notifyListeners();
}

void reset(){
  _counter.count =0;
  notifyListeners();
}

}