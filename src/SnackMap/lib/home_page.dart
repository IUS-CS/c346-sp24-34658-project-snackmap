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
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  //Used for testing
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  late VideoPlayerController _controller;
  bool _isVideoPlaying = false;
  bool _isStartButtonVisible = true;

  @override
  void initState() {
    //Video to play
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        "assets/SnackMapLogo.mp4"))
      ..initialize().then((_) {
        setState(() {});
      });


    //Sees if video has played
    _controller.addListener(() {
      if (_controller.value.isPlaying && !_isVideoPlaying) {
        setState(() {
          _isVideoPlaying = true;
          _isStartButtonVisible = false;
        });
      } else if (!_controller.value.isPlaying && _isVideoPlaying) {
        setState(() {
          _isVideoPlaying = false;
        });
      }
    });

    _controller.setLooping(false);
  }



  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //Remove start button and play video
  void _startVideo() {
    setState(() {
      _isStartButtonVisible = false;
    });
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: OptionsDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff3A95D1),
        title: const Center(
          child: Text('SnackMap'),
          
        ),

        //used for testing
        leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
        tooltip: 'Open menu',


      ),
      ),
      body: Stack(
        children: [
          Center(
            child: _isVideoPlaying
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : SizedBox(),
          ),
          if (!_isVideoPlaying && _isStartButtonVisible)
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Press play',
                    style: TextStyle(fontSize: 20),
                  ),
                  ElevatedButton(
                    onPressed: _startVideo,
                    child: const Text('Start'),
                  ),
                ],
              ),
            ),
        ],
      ),
      
    );
  
  }
}
