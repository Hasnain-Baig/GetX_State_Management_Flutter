import 'package:get/get.dart';

class AddResultListController extends GetxController {
  RxList _list = [].obs;
  RxList get list => _list;

  void setValues(int x) {
    _list.add(x);
    print(_list);
  }
}
