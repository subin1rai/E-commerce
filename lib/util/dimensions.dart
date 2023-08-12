import 'package:get/get.dart';

//to make dynamic, where height and width remain same in diffrent device

class Dimensions{
static double screenHight =Get.context!.height;
static double screenWidth =Get.context!.width;

static double pageViewController = screenHight/3.84;
static double pageViewTextController = screenHight/7.03;

static double pageView = screenHight/2.64;

//dynamic height padding margin
static double height10 = screenHight/84.4;
static double height15 = screenHight/56.27;
static double height20 = screenHight/82.2;

//dynamic width padding margin
static double width10 = screenHight/84.4;
static double width15 = screenHight/56.27;
static double width20 = screenHight/82.2;



static double font20 = screenHight/42.2;
static double radius20 = screenHight/42.2;
static double radius30 = screenHight/28.13;


}