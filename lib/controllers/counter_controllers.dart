import 'package:get/get.dart';

class CounterControllers extends GetxController {

  RxInt counter  = RxInt(0);
 increament (){
   counter.value++;
 }

  decreament (){
    counter--;
  }


}