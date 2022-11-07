import 'package:disan/const.dart';
import 'package:flutter/material.dart';


class NotifiactionItem extends StatelessWidget {
  String title;
  String subTitle;
  String subject;
  NotifiactionItem({
    required this.subTitle,
    required this.title,
    required this.subject,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(Constant.kLogo),
            backgroundColor: Colors.white,
          ),
          const SizedBox(width: 5),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width - 90,
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 5),
                subject == ''
                    ? Container()
                    : Container(
                  width: width - 90,
                  padding: const EdgeInsets.only(left: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                          width: 2, color: Constant.primaryColor),
                    ),
                  ),
                  child: Text(
                    subject,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: subject == '' ? 0 : 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subTitle,
                      style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
                    ),
                    Text(
                      '15 : 30',
                      style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
                    ),
                  ],
                )

              ],
            ),
          ),
          const SizedBox(width: 5),
          IconButton(
            onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 60,
                      color: Colors.white,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration:  BoxDecoration(
                                  color: Colors.grey.shade300,
                                  shape: BoxShape.circle
                              ),
                              child: const Center(
                                child: Icon(Icons.backspace,color: Colors.black,size: 25),
                              ),
                            ),
                            const SizedBox(width: 25,),
                            const  Text('Remove this notification',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            )),

                          ],
                        ),
                      ),
                    );
                  },
                );
              },

            icon: const Icon(Icons.more_vert, size: 20),
          ),

        ],
      ),
    );
  }
}