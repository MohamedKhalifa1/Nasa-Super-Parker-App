import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ProblemScreenOne extends StatefulWidget {
  const ProblemScreenOne({ super.key });

  @override
  State<ProblemScreenOne> createState() => _ProblemScreenOne();
}

class _ProblemScreenOne extends State<ProblemScreenOne> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // _controller = VideoPlayerController.network(
    //     "https://www.youtube.com/watch?v=dSBRQUebo7g");
    _controller = VideoPlayerController.asset("assets/video/afroto.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
       SafeArea(
         child: Column(
           children: [
             FutureBuilder(
               future: _initializeVideoPlayerFuture,
               builder: (context, snapshot) {
                 if (snapshot.connectionState == ConnectionState.done) {
                   return Center(
                     child: Column(
                       children: [
                         Expanded(
                           child: SizedBox(
                             height: 20,
                             child: AspectRatio(
                               aspectRatio: _controller.value.aspectRatio,
                               child: VideoPlayer(_controller),
                             ),
                           ),
                         ),
                         VideoProgressIndicator(_controller, allowScrubbing: true,padding: EdgeInsets.symmetric(
                           vertical: 0,
                           horizontal: 12,
                         ),)
                       ],
                     ),

                   );
                 } else {
                   return Row(

                     children: [
                       CircularProgressIndicator(),

                     ],
                   );
                 }
               },
             ),
           ],
         ),
       ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
      setState(() {
        _controller.value.isPlaying
            ? _controller.pause()
            : _controller.play();
      });
    },
    child: Icon(
    _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
    )
    )
    );
  }


}
