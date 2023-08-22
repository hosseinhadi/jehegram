import 'package:get/get.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin{

  static HomeController get to => Get.find();

  List<(String?, String?, String?, String?)> messageViewList = [
    ("Hossein", "Hi", "Fri", null),
    ("Ali", "پس کجایی چرا نیستی؟", "18 Oct", null),
    ("Hassan", "کی میای؟", "Fri", null),
    ("دانشکده شیمی", "امروز کلاس برگزار نمیشود", "Today", "Amir"),
    ("Vesal", "بذارین توضیح بدهم", "Yesterday", null),
    ("Mohammad Erfan", "من هیچی متوجه نمیشم!", "Today", null),
    ("Hossein", "Hi", "Fri", null),
    ("Ali", "پس کجایی چرا نیستی؟", "18 Oct", null),
    ("Hassan", "کی میای؟", "Fri", null),
    ("دانشکده شیمی", "امروز کلاس برگزار نمیشود", "Today", "Amir"),
    ("Vesal", "بذارین توضیح بدهم", "Yesterday", null),
    ("Mohammad Erfan", "من هیچی متوجه نمیشم!", "Today", null),
    ("Hossein", "Hi", "Fri", null),
    ("Ali", "پس کجایی چرا نیستی؟", "18 Oct", null),
    ("Hassan", "کی میای؟", "Fri", null),
    ("دانشکده شیمی", "امروز کلاس برگزار نمیشود", "Today", "Amir"),
    ("Vesal", "بذارین توضیح بدهم", "Yesterday", null),
    ("Mohammad Erfan", "من هیچی متوجه نمیشم!", "Today", null),
    ("Hossein", "Hi", "Fri", null),
    ("Ali", "پس کجایی چرا نیستی؟", "18 Oct", null),
    ("Hassan", "کی میای؟", "Fri", null),
    ("دانشکده شیمی", "امروز کلاس برگزار نمیشود", "Today", "Amir"),
    ("Vesal", "بذارین توضیح بدهم", "Yesterday", null),
    ("Mohammad Erfan", "من هیچی متوجه نمیشم!", "Today", null),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
