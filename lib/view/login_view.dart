import 'package:celloip_practical/service/login_service.dart';
import 'package:celloip_practical/utils/color.dart';
import 'package:celloip_practical/widget/button.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  ApiService apiService = ApiService();
final emailController = TextEditingController();
final passwordController = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        color: Color(0xff12AA73),
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  "Smartr",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 45, right: 45, top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(110),
                        topRight: Radius.circular(110)),
                    color: Color(0xffBFDAD0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Let's get you started",
                      style: TextStyle(
                          color: Color(0xff434545),
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                              color: Color(0xff434847),
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Passworrd",
                          style: TextStyle(
                              color: Color(0xff434847),
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Icon(
                          Icons.info_outline,
                          color: Color(0xff135B46),
                          size: 17,
                        ),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "By signing up, you will declare that you read and \n understand the",
                                style: TextStyle(
                                    color: CommonColor.greyTextColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text: "Smartr Services Agreement.",
                                style: TextStyle(
                                    color: CommonColor.primaryTextColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600),
                              ),
                            ])),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Alredy have an Account ?",
                          style: TextStyle(
                              color: CommonColor.greyTextColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                      ),
                          TextSpan(
                            text: "Sign In",
                            style: TextStyle(
                                color: CommonColor.primaryTextColor,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                    ])),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                        onTap: () {
                          if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                            apiService.loginServiceApi(context, emailController
                                .text, passwordController.text).then((value) {
                                  if(value == false){
                                final snackBar = SnackBar(content: Text("Enter valid email & password"));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                            });
                          } else {
                            final snackBar = SnackBar(content: Text("Enter email & password"));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                          },
                        child: ActionButton(
                            title: "GET START",
                            backcolorCode: 0XFF135B46,
                            titleColorCode: 0XFFFFFFFF)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
