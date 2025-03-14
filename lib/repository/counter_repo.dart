import 'package:counterapp/services/counter_services.dart';

class CounterRepo {
  final CounterServices counterServices=CounterServices();

  int increment (int currentcount){

    return counterServices.increment(currentcount);
    
  }

  int decrement (int currentcount){
    return counterServices.decrement(currentcount);
  }

  

}