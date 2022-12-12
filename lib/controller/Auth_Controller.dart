import 'dart:math';

import 'package:cell/views/create_profile.dart';
import 'package:cell/views/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
class AuthController extends GetxController{
  FirebaseAuth auth=FirebaseAuth.instance;
  var isLoading=false.obs;


  void Login({String?email,String?password}){
    isLoading(true);
    auth.signInWithEmailAndPassword(email: email!, password: password!).then((value) {
      ///login success
Get.to(()=>HomeScreen());

    }).catchError((e) {
      ///erro occured

    });

    
  }
  void signup({String?email,String?password}){
  /// here we have two provide two things
  /// 1 email
  /// 2 password
  isLoading(true);
 auth.createUserWithEmailAndPassword(email: email!, password: password!).then((value) {
  Get.to(()=>ProfileScreen());
  ///navigate user to profile Screen

 }).catchError((e){
  /// print error information
  print("error in Authentication $e");
 });
   

}
}
  

