import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ViewPage2 extends StatefulWidget {
  static const routeName = 'MarvelPage2';
  String id;
  String urlChanel;
  String cover;
  String titre;
  ViewPage2(this.id, this.urlChanel, this.cover, this.titre);

  @override
  _ViewPage2State createState() => _ViewPage2State();
}

class _ViewPage2State extends State<ViewPage2> {
  double opacite = 1.0;
  VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.urlChanel)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  void controlPlayer() {
    var _controllerValuePsg = _controller.value;
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      setState(() {
        _controller.pause();
      });
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: _controller.value.initialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(widget.cover),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      this.opacite = 1.0 - this.opacite;
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  child: Opacity(
                    opacity: opacite,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height / 1.2,
                        top: MediaQuery.of(context).size.height / 2.2,
                      ),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.4),
                      ),
                      child: Icon(
                        _controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       _controller.value.isPlaying
      //           ? _controller.pause()
      //           : _controller.play();
      //     });
      //   },
      //   child: Icon(
      //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      //   ),
      // ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
