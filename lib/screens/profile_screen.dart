import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';
import '../widgets/app_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            children: [
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage('images/img_1.png')
                  )
                )
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Book Ticket', style: Styles.headLineStyle),
                  Gap(AppLayout.getHeight(2)),
                  Text('New York', style: TextStyle(
                    fontSize: 14,fontWeight: FontWeight.w500, color: Colors.grey.shade500
                  )),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEF4F3),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(1),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799)
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 14)
                        ),
                        const Gap(2),
                        const Text('Premium status', style: TextStyle(
                          color: Color(0xFF526799),
                          fontWeight: FontWeight.w600
                        ))
                      ],
                    )
                  ),
                ]
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('You are tapped');
                    },
                    child: Text('Edit', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500))
                  )
                ],
              ),
            ]
          ),
          Divider(color: Colors.grey.shade300),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                ),
              ),
              Positioned(
                top: -45,
                right: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: const Color(0xFF264CD2))
                  )
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor, size: 27)
                  ),
                  const Gap(10),
                  Column(
                    children: [
                      Text('You\'v got a new award', style: Styles.headLineStyle2.copyWith(
                        fontWeight: FontWeight.bold,color: Colors.white
                      )),
                      Text('223')
                    ],
                  )
                ],
              )
            ]
          )
        ]
      )
    );
  }
}