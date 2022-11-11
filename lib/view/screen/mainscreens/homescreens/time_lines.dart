import 'package:disan/view/screen/mainscreens/homescreens/story_view.dart';
import 'package:disan/view/screen/mainscreens/real_screen.dart';
import 'package:disan/view/widget/my_container.dart';
import 'package:disan/view/widget/shop_post.dart';
import 'package:flutter/material.dart';
import '../../../widget/player_animoition_icon.dart';
import '../../../widget/profile_post.dart';
import '../../profile_user_screen.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  ProfileUserScreen(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: const NetworkImage(
                        "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/166719356_2928463670756872_3761379331030724755_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=XmTSjzYtswoAX-smrFA&_nc_ht=scontent.fcai20-1.fna&oh=00_AfC__4Mhm4SMh2L0uYj1_Z_n67vq0W1giUG2QJgkaTAoMA&oe=6389B051",
                          ),
                          radius: size.width * .07,
                        ),
                      ),
                      Container(
                        height: size.height * 0.07,
                        width: size.width * 0.7,
                        margin: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(

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
                            "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/166719356_2928463670756872_3761379331030724755_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=XmTSjzYtswoAX-smrFA&_nc_ht=scontent.fcai20-1.fna&oh=00_AfC__4Mhm4SMh2L0uYj1_Z_n67vq0W1giUG2QJgkaTAoMA&oe=6389B051",
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
                                  "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/166719356_2928463670756872_3761379331030724755_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=XmTSjzYtswoAX-smrFA&_nc_ht=scontent.fcai20-1.fna&oh=00_AfC__4Mhm4SMh2L0uYj1_Z_n67vq0W1giUG2QJgkaTAoMA&oe=6389B051",
                                ),
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
            PostShopTimeLine(size: size)
          ],
        ),
      ),
    );
  }
}


