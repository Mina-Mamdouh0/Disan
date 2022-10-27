import 'dart:async';
import 'package:disan/view/screen/mainscreens/homescreens/story_view.dart';
import 'package:disan/view/screen/mainscreens/real_screen.dart';
import 'package:disan/view/widget/my_container.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListView(
        children: [
          MyContainer(
            height: size.height * 0.18,
            width: size.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: const NetworkImage(
                        "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/301824890_3307009669568935_8884583819678523389_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=AX6BmW3W3xEAX9ubmyA&_nc_ht=scontent.fcai20-2.fna&oh=00_AT9JlVvtt1Zj-GIHpITIezlAG2Y0bYiYnYcyvyG7BqbKUA&oe=635E35F4",
                      ),
                      radius: size.width * .07,
                    ),
                    Container(
                      height: size.height * 0.07,
                      width: size.width * 0.7,
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.black45),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        "مرحبا بك ",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Icon(Icons.camera_enhance_outlined),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            const Text(
                              "Camera",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Icon(Icons.image),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            const Text(
                              "Gallery",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          MyContainer(
            height: size.height * 0.42,
            width: size.width,
            child: Column(
              children: [
                SizedBox(
                  height: size.height * .13,
                  width: size.width,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) => InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StoryView())),
                        child: CircleAvatar(
                          radius: size.width * .1,
                          backgroundColor: Colors.grey[600],
                          child: CircleAvatar(
                            backgroundImage: const NetworkImage(
                              "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/301824890_3307009669568935_8884583819678523389_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=AX6BmW3W3xEAX9ubmyA&_nc_ht=scontent.fcai20-2.fna&oh=00_AT9JlVvtt1Zj-GIHpITIezlAG2Y0bYiYnYcyvyG7BqbKUA&oe=635E35F4",
                            ),
                            radius: size.width * .09,
                          ),
                        ),
                      ),
                      separatorBuilder: (context, i) => const SizedBox(
                        width: 20,
                      ),
                      itemCount: 20),
                ),
                Container(
                  height: size.height * .003,
                  color: Colors.grey[300],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height * .13,
                  width: size.width,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) => InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReelView())),
                        child: Container(
                          width: size.width * .2,
                          height: size.height * .05,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[600]!),
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/301824890_3307009669568935_8884583819678523389_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=AX6BmW3W3xEAX9ubmyA&_nc_ht=scontent.fcai20-2.fna&oh=00_AT9JlVvtt1Zj-GIHpITIezlAG2Y0bYiYnYcyvyG7BqbKUA&oe=635E35F4"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      separatorBuilder: (context, i) => const SizedBox(
                        width: 20,
                      ),
                      itemCount: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * .003,
                  color: Colors.grey[300],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height * .1,
                  width: size.width,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) => const PlayerWidget(
                        url:
                        "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4",
                      ),
                      separatorBuilder: (context, i) => const SizedBox(
                        width: 20,
                      ),
                      itemCount: 20),
                ),
              ],
            ),
          ),
          PostTimeLine(size: size),
        ],
      ),
    );
  }
}

class PlayerWidget extends StatefulWidget {
  final String url;
  const PlayerWidget({
    super.key,
    required this.url,
  });

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget>
    with TickerProviderStateMixin {
  bool isPlaying = false;
  late AudioPlayer player;
  late AnimationController controller;

  @override
  void initState() {
    playAudio();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  void playAudio() async {
    player = AudioPlayer();
    await player.setUrl(
        "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3");
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          color: Colors.black,
          size: 25,
          progress: controller,
        ),
        onPressed: () async {
          if (isPlaying) {
            controller.reverse();

            isPlaying = false;
            player.stop();
          } else {
            controller.forward();
            isPlaying = true;
            player.play();
          }
        });
  }
}

class PostTimeLine extends StatefulWidget {
  final Size size;
  const PostTimeLine({
    super.key,
    required this.size,
  });

  @override
  State<PostTimeLine> createState() => _PostTimeLineState();
}

class _PostTimeLineState extends State<PostTimeLine> {
  Timer? countdownTimerMin;
  Duration myDurationMin = const Duration(
    minutes: 15,
  );

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
    return MyContainer(
        height: widget.size.height * .6,
        width: widget.size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      right: 50, left: (widget.size.width * .37)),
                  child: CircleAvatar(
                    radius: widget.size.width * .09,
                    backgroundColor: Colors.grey[600],
                    child: CircleAvatar(
                      backgroundImage: const NetworkImage(
                        "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/301824890_3307009669568935_8884583819678523389_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=AX6BmW3W3xEAX9ubmyA&_nc_ht=scontent.fcai20-2.fna&oh=00_AT9JlVvtt1Zj-GIHpITIezlAG2Y0bYiYnYcyvyG7BqbKUA&oe=635E35F4",
                      ),
                      radius: widget.size.width * .08,
                    ),
                  ),
                ),
                Text(
                  "$min:$seconds",
                  style: const TextStyle(fontSize: 17),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert, size: 20),
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
                  "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/301824890_3307009669568935_8884583819678523389_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=AX6BmW3W3xEAX9ubmyA&_nc_ht=scontent.fcai20-2.fna&oh=00_AT9JlVvtt1Zj-GIHpITIezlAG2Y0bYiYnYcyvyG7BqbKUA&oe=635E35F4",
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
                    primary: Colors.blue,
                  ),
                  label: const Text("100 Nice"),
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up),
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
                  label: const Text("10 Share"),
                  onPressed: () {},
                  icon: const Icon(Icons.send_outlined),
                ),


              ],
            )
          ],
        ));
  }
}
