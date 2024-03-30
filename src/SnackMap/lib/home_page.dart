
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'price_page.dart';
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

class SearchDrawer extends StatelessWidget {
  const SearchDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff64C19D),
            ),
            child: Text(
              'Find A Snack By',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.manage_search),
            title: const Text(
              'Name',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text('Search for a drink or snack by name.'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.room),
            title: const Text(
              'Location',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text('Search for a drink or snack by location.'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.paid),
            title: const Text(
              'Price',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text('Search for a drink or snack by price.'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const PricePage()));
            },
          ),
        ],
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {


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
      drawer: SearchDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff3A95D1),
        title: const Center(
          child: Text('SnackMap'),
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
