
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_ui/custom%20widgets.dart';

class SecondUi extends StatelessWidget {
  const SecondUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomBar(),
      appBar: AppBarCustom(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1.7,
        children: [
          GridCard(containerColor: Colors.orange[800], content: '''Marketing
Designs''', icondata: Icons.announcement_outlined,),
          GridCard(icondata: Icons.money, containerColor: Colors.green, content: '''Online
Payments'''),
          GridCard(icondata: Icons.local_offer_outlined, containerColor: Colors.orange, content: '''Discount
Coupons'''),
          GridCard(icondata: Icons.supervisor_account_outlined, containerColor: Colors.blue, content: '''My
Customers'''),
          GridCard(icondata: Icons.qr_code_sharp, containerColor: Colors.grey[700], content: '''Store QR
Code'''),
          GridCard(icondata: Icons.attach_money_outlined, containerColor: Colors.purple, content: '''Extra
Charges'''),
          GridCard(icondata: Icons.format_align_left_outlined, newstack: true,containerColor: Colors.purpleAccent, content: '''Order
Form''')
        ],
        ),
      )
    );
  }
}
