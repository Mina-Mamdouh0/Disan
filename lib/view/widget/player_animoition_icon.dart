import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

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