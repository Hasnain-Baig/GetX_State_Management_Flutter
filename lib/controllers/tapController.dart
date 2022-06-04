import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;

  RxInt _y = 0.obs;
  RxInt get y => _y;

  RxInt _z = 0.obs;
  RxInt get z => _z;

  void increaseX() {
    _x++;
    update();
    print("x-->$_x");
  }

  void decreaseX() {
    _x--;
    update();
    print("x-->$_x");
  }

  void increaseY() {
    _y.value++;
  }

  void decreaseY() {
    _y.value--;
  }

  void addXY() {
    _z.value = _x + _y.value;
  }
}
