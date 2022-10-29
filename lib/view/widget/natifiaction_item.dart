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

 /* final ImagePaths _imagePaths = ImagePaths();
  final ColorHepler _colorHepler = ColorHepler();*/
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(Constant.kLogo),
            backgroundColor: Colors.white,
          ),
          const SizedBox(width: 10),
          Column(
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
              Text(
                subTitle,
                style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
              ),
            ],
          )
        ],
      ),
    );
  }
}