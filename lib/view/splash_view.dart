import 'package:celloip_practical/view/login_view.dart';
import 'package:flutter/material.dart';

import '../widget/button.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  iconAndText(String image, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        SizedBox(
          width: 12,
        ),
        Text(
          text,
          textAlign: TextAlign.left,
          overflow: TextOverflow.fade,
          style: const TextStyle(
            textBaseline: TextBaseline.alphabetic,
              color: Color(0xfff4f4f4),
              fontSize: 12,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff12AA73),
          Color(0xff135B46).withOpacity(0.8),
        ],begin: Alignment.topCenter,end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Smartr",
              style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.w500),
            ),
            Image.asset("assets/images/signup man.png",height: 150,width: 150,),
            Text(
              "Fresh Look, Same login",
              style: TextStyle(
                  color: Color(0xfff4f4f4),
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 22,
            ),
            iconAndText(
                "assets/images/up_down.png",
                "SmartRecruiters\n"
                " Candidat portal\n"
                " is now smartr."),
            SizedBox(
              height: 22,
            ),
            iconAndText(
                "assets/images/enter.png",
                "Enter the same login\n"
                    " info used for your\n"
                    " smartrProfile",),
            SizedBox(
              height: 22,
            ),
            iconAndText(
                "assets/images/re_try.png",
                "If login details were\n"
                    "saved, you may\n"
                    " need to re-save."),
            SizedBox(
              height: 32,
            ),
            Text("Why Smartr ? read more",
                style: TextStyle(
                  color: Color(0xfff4f4f4),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(
              height: 12,
            ),
            InkWell(child: ActionButton(backcolorCode: 0xffbfdbd1,title: "Get Start",titleColorCode: 0xff135B46),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginView()));
            }),
          ],
        ),
      ),
    );
  }
}
