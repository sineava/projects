import 'package:bookticket/widgets/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('What are\nyou looking for?', style: Styles.headLineStyle.copyWith(fontSize: 35)),
          Gap(AppLayout.getHeight(40)),
          Container(
            child: Row(
              children: [
                Container(
                  width: size.width * .44,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(10))),
                    color:  Colors.white
                  ),
                  child: const Center(
                    child: Text('Airline tickets')
                  )
                ),
                Container(
                  width: size.width * .44,
                  child: const Center(child: Text('Hotels'))
                )
              ]
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              color:  const Color(0xFFF4F6FD)
            )
          )
        ]
      )
    );
  }
}