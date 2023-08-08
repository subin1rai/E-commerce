import 'package:get/get.dart';

//to make dynamic, where height and width remain same in diffrent device

class Dimensions{
static double screenHight =Get.context!.height;
static double screenWidth =Get.context!.width;

static double pageViewController = screenHight/3.84;
static double pageViewTextController = screenHight/7.03;
}