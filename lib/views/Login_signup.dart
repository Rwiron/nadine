import 'package:cell/controller/Auth_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> formkey=GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmpasswordController=TextEditingController();
  int SelectedRadio=0;
  void setSelectedRadio(int val){
    setState(() {
      SelectedRadio=val;
    });
   
  }
   bool isSignUp=false;
   late AuthController authController;
  @override
  
  void initState() {
    // TODO: implement initState
    super.initState();
    authController=Get.put(AuthController());
  
  }  
  @override    
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: Get.width*0.05),
            child: Column(
      children: [
        SizedBox(
          height: Get.height*0.05,
        ),
        isSignUp
        ? myText(
          Text:'Sign up',
          style:TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w600

          ),
        )
        :myText(
          Text:'Login',
          style:GoogleFonts.poppins(
            fontSize: 23,
            fontWeight: FontWeight.w600
          ),
          )
        )

      ],       
            ),
          )
        ),

      ),
    );
  }
}