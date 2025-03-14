class CounterServices {

  int increment(int currentcount){

    return currentcount+1;
  }

  int decrement(int currentcount){
    if(currentcount>0){
    return currentcount-1;
    }
    return currentcount;
  }
}