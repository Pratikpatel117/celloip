import 'package:celloip_practical/utils/color.dart';
import 'package:celloip_practical/widget/button.dart';
import 'package:flutter/material.dart';

class JobProfileView extends StatefulWidget {
  const JobProfileView({Key? key}) : super(key: key);

  @override
  State<JobProfileView> createState() => _JobProfileViewState();
}

class _JobProfileViewState extends State<JobProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_rounded),
                    Icon(
                      Icons.favorite_border_outlined,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/signup man.png",
                      height: 90,
                      width: 90,
                    ),
                    Text(
                      "UI/Ux Designer",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      "Canva",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: CommonColor.greyTextColor),
                    ),
                    Text(
                      "posted on 3 may",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: CommonColor.greyTextColor),
                    ),
                  ],
                ),
              ),
              Divider(
                color: CommonColor.lightBackgroundColor,
                height: 3,
                thickness: 3,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "APPLY BEFORE",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: CommonColor.greyTextColor),
                            ),
                            Text(
                              "3 june",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: CommonColor.greyTextColor),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "JOB NATURE",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: CommonColor.greyTextColor),
                            ),
                            Text(
                              "Full-tile",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: CommonColor.greyTextColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "SALARY RANGE",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: CommonColor.greyTextColor),
                            ),
                            Text(
                              "40k - 60k/yearly",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: CommonColor.greyTextColor),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "JOB LOCATION",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: CommonColor.greyTextColor),
                            ),
                            Text(
                              "Work from anywhere",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: CommonColor.greyTextColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: CommonColor.lightBackgroundColor,
                height: 3,
                thickness: 3,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "JOB DESCRIPTION",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: CommonColor.greyTextColor),
                    ),
                    Text(
                        "Can you bring creative human-centered ideas to life and make great things happen beyond what meets the eye?We believe in teamwork, fun, complex projects, diverse perspectives, and simple solutions. How about you? We're looking for a like-minded"),
                    Row(
                      children: [
                        Text("see more"),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: CommonColor.lightBackgroundColor,
                height: 3,
                thickness: 3,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ROLES AND RESPONSIBILITIES",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: CommonColor.greyTextColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ActionButton(
              backcolorCode: 0XFF135B46,
              title: "APPLY NOW",
              titleColorCode: 0XFFFFFFFF),
        ),
      ]),
    );
  }
}
