import 'package:disan/const.dart';
import 'package:disan/view/widget/natifiaction_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  List<Map<String, String>> notifications = [
    {
      'title': 'Joy Arnold left 6 comments on Your Post',
      'subTitle': 'Yesterday at 11:42 PM',
      'subject': '',
    },
    {
      'title':
      'Dennis Nedry commented on Isla Nublar SOC2 compliance report    ',
      'subTitle': 'Yesterday at 5:42 PM',
      'subject':
      '“ leaves are an integral part of the stem system. They are attached by a continuous vascular system to the rest of the plant so that free exchange of nutrients.”',
    },
    {
      'title': 'John Hammond created Isla Nublar SOC2 compliance report  ',
      'subTitle': 'Wednesday at 11:15 AM',
      'subject': '',
    },
    {
      'title': 'Joy Arnold left 6 comments on Your Post',
      'subTitle': 'Yesterday at 11:42 PM',
      'subject': '',
    },
    {
      'title':
      'Dennis Nedry commented on Isla Nublar SOC2 compliance report    ',
      'subTitle': 'Yesterday at 5:42 PM',
      'subject':
      '“ leaves are an integral part of the stem system. They are attached by a continuous vascular system to the rest of the plant so that free exchange of nutrients.”',
    },
    {
      'title': 'John Hammond created Isla Nublar SOC2 compliance report  ',
      'subTitle': 'Wednesday at 11:15 AM',
      'subject': '',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
               height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Constant.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text('Your Orders',
                            textAlign: TextAlign.center,
                            style:
                        TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text('Rating',
                            textAlign: TextAlign.center,style:
                        TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        NotifiactionItem(
                          title: notifications[index]['title'].toString(),
                          subTitle: notifications[index]['subTitle'].toString(),
                          subject: notifications[index]['subject'].toString(),
                        ),
                        const Divider(thickness: 1),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}