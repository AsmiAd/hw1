import 'package:get/get_state_manager/get_state_manager.dart';

class TapController extends GetxController {
  int currentValue=0;

  void increment (){
    if (currentValue>=10){
      return;
    }
    currentValue+=2 ;
    update();
  }
  
  void decrement (){
    if (currentValue<=0){
      return;
    }
    currentValue-=2;
    update();
  }
  
}