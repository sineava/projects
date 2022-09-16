import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/widgets/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../utils/app_style.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          const Gap(40),
          Text('Tickets', style: Styles.headLineStyle),
          const Gap(20),
          const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
          Container(
            padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
            child: TicketView(ticket: ticketList[0], isColor: true)
          )
        ],
      )
    );
  }
}