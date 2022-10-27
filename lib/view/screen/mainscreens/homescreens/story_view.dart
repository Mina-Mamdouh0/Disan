import 'package:flutter/material.dart';
import 'package:story/story_page_view/story_page_view.dart';

class StoryView extends StatefulWidget {
  const StoryView({Key? key}) : super(key: key);

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: StoryPageView(

          itemBuilder: (context, pageIndex, storyIndex) {
            return Stack(
              children: [
                Positioned.fill(
                  child: Container(color: Colors.black),
                ),
                Positioned.fill(
                  child: Image.network(
                    "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/301824890_3307009669568935_8884583819678523389_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=AX6BmW3W3xEAX9ubmyA&_nc_ht=scontent.fcai20-2.fna&oh=00_AT9JlVvtt1Zj-GIHpITIezlAG2Y0bYiYnYcyvyG7BqbKUA&oe=635E35F4",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 44, left: 8),
                  child: Row(
                    children: [
                      Container(
                        height: 32,
                        width: 32,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(                                "https://scontent.fcai20-2.fna.fbcdn.net/v/t39.30808-6/301824890_3307009669568935_8884583819678523389_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=AX6BmW3W3xEAX9ubmyA&_nc_ht=scontent.fcai20-2.fna&oh=00_AT9JlVvtt1Zj-GIHpITIezlAG2Y0bYiYnYcyvyG7BqbKUA&oe=635E35F4"),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "youssef",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          gestureItemBuilder: (context, pageIndex, storyIndex) {
            return Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  color: Colors.white,
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            );
          },
          pageLength:5,
          storyLength: (int pageIndex) {
            return 3;
          },
          onPageLimitReached: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
