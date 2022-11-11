
import 'dart:async';

import 'package:disan/view/widget/pop_up_manu.dart';
import 'package:flutter/material.dart';

class PostShopTimeLine extends StatefulWidget {
  final Size size;
  const PostShopTimeLine({
    super.key,
    required this.size,
  });

  @override
  State<PostShopTimeLine> createState() => _PostShopTimeLineState();
}

class _PostShopTimeLineState extends State<PostShopTimeLine> {
  Timer? countdownTimerMin;
  Duration myDurationMin = const Duration(
    minutes: 15,
  );
  GlobalKey key = GlobalKey();

  var min = 15;
  var seconds = 00;

  void setCountDownMin() {
    const reduceSecondsBy = 1;
    setState(() {
      min = myDurationMin.inMinutes - reduceSecondsBy;

      if (min <= 0) {
        countdownTimerMin!.cancel();
      } else {
        myDurationMin = Duration(minutes: min);
      }
    });
  }

  void startTimerMin() {
    countdownTimerMin =
        Timer.periodic(const Duration(minutes: 1), (_) => setCountDownMin());
  }

  Timer? countdownTimer;
  Duration myDuration = const Duration(
    seconds: 60,
  );
  void setCountDownSe() {
    const reduceSecondsBy = 1;
    setState(() {
      seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds <= 0) {
        resetTimer();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  void startTimerSe() {
    countdownTimerMin =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDownSe());
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void resetTimer() {
    setState(() => myDuration = const Duration(seconds: 60));
  }

  @override
  void initState() {
    min = 14;
    myDurationMin = Duration(minutes: min);
    startTimerMin();
    startTimerSe();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.size.height * .6,
        width: widget.size.width,
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: widget.size.width * .09,
                  backgroundColor: Colors.grey[600],
                  child: CircleAvatar(
                    backgroundImage: const NetworkImage(
                      "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/166719356_2928463670756872_3761379331030724755_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=XmTSjzYtswoAX-smrFA&_nc_ht=scontent.fcai20-1.fna&oh=00_AfC__4Mhm4SMh2L0uYj1_Z_n67vq0W1giUG2QJgkaTAoMA&oe=6389B051",
                    ),
                    radius: widget.size.width * .08,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Shop name",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const Spacer(),
                Text(
                  "$min:$seconds",
                  style: const TextStyle(fontSize: 17),
                  textAlign: TextAlign.right,
                ),
                PhysicalModel(
                  color: Colors.transparent,
                  elevation: 0,
                  child: popUpManu(context,key),
                ),
              ],
            ),
            const Text(
              "youssef ahmed",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "${DateTime.now().day}/${DateTime.now().month}",
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
            Text(
              "${DateTime.now().hour}/${DateTime.now().minute}",
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "this is a test post to test the post time line",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              height: widget.size.height * .002,
              width: widget.size.width,
              color: Colors.grey[300],
            ),
            Image(
                alignment: Alignment.center,
                width: widget.size.width,
                height: widget.size.height * .25,
                fit: BoxFit.fill,
                isAntiAlias: true,
                image: const NetworkImage(
                  "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/166719356_2928463670756872_3761379331030724755_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=XmTSjzYtswoAX-smrFA&_nc_ht=scontent.fcai20-1.fna&oh=00_AfC__4Mhm4SMh2L0uYj1_Z_n67vq0W1giUG2QJgkaTAoMA&oe=6389B051",
                )),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              height: widget.size.height * .002,
              width: widget.size.width,
              color: Colors.grey[300],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.yellow,
                  ),
                  label: const Text("5 ratings"),
                  onPressed: () {},
                  icon: const Icon(Icons.star),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.blueGrey,
                  ),
                  label: const Text("50 Comment"),
                  onPressed: () {},
                  icon: const Icon(Icons.comment_outlined),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.teal,
                  ),
                  label: const Text("Add to cart"),
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined),
                ),
              ],
            )
          ],
        ));
  }
}