import 'package:SnackMap/how_to_use_page.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'options_drawer.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const appTitle = 'SnackMap';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late VideoPlayerController controller;
  bool isVideoPlaying = false;
  bool isStartButtonVisible = true;

  @override
  void initState() {
    super.initState();

    //Video controller
    controller = VideoPlayerController.networkUrl(Uri.parse(
        "assets/SnackMapLogo.mp4"))
      ..initialize().then((_) {
        setState(() {});
      });

    //Video playback
    controller.addListener(() {
      if (controller.value.isPlaying && !isVideoPlaying) {
        setState(() {
          isVideoPlaying = true;
          isStartButtonVisible = false;
        });
      } else if (!controller.value.isPlaying && isVideoPlaying) {
        setState(() {
          isVideoPlaying = false;
          navigateToNewPage();


      });
      }

    });

    controller.setLooping(false);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void startVideo() {
    setState(() {
      isStartButtonVisible = false;
    });
    controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: OptionsDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff3A95D1),
        title: const Center(
          child: Text('SnackMap'),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          tooltip: 'Open menu',
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: isVideoPlaying
                ?AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  )
                : SizedBox(),
          ),
          if (!isVideoPlaying && isStartButtonVisible)
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Press play',
                    style: TextStyle(fontSize: 20),
                  ),
                  ElevatedButton(
                    onPressed: startVideo,
                    child: const Text('Play'),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  void navigateToNewPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HowToUsePage()),
    );
  }
}
