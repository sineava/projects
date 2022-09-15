import 'package:bookticket/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_style.dart';
import 'thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.9,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        child: Column(
          children: [
            const Gap(20),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          Center(child: Transform.rotate(angle: 1.5, child: const Icon(Icons.local_airport_rounded, color: Colors.white))),
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate((constraints.constrainWidth() / 6).floor(), (index) => const Text('-', style: TextStyle(color: Colors.white)))
                                );
                              }
                            )
                          ),
                        ]
                      )),
                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100, child: Text(ticket['from']['name'], style: const TextStyle(color: Colors.white))
                      ),
                      Text(ticket['flying_time'], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      SizedBox(
                        width: 100, child: Text(ticket['to']['name'], textAlign: TextAlign.end, style: const TextStyle(color: Colors.white))
                      )
                    ]
                  )
                ],
              )
            ),
            Container(
              color: Styles.orangeColor,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      )
                    )
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(15, (index) => const SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white
                                )
                              )
                            ))
                          );
                        }
                      )
                    )
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)
                        )
                      )
                    )
                  )
                ],
              )
            ),
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('1 MAY', style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          const Gap(5),
                          Text('DATE', style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                        ]
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('08:00 AM', style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          const Gap(5),
                          Text('Depature Time', style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                        ]
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('23', style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          const Gap(5),
                          Text('Number', style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                        ]
                      )
                    ]
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }
}