import 'package:get/get.dart';

class TapController extends GetxController{
  int _x = 0;
  get x=>_x;

   increment(){
    _x ++;
    update();
  }

    decrement(){
    _x --;
  }
}