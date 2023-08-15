import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController{
  late PageController pageController ;


//Variable for changing index of Bottom Bar
  RxInt currentPage=0.obs;


  void goToTab(int page){
    currentPage.value=page;
    pageController.jumpToPage(page);

  }

  @override
  void onInit(){
    pageController = PageController(initialPage:0);
    super.onInit();
  }
  @override
  void onClose(){
    pageController.dispose();
    super.onClose();
  }


}