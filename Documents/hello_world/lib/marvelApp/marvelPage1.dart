
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'paysageView.dart';
import 'portraiView.dart';


class MarvelPage2 extends StatefulWidget {
  static const routeName = 'MarvelPage2';
  String id;
  String urlChanel;
  String cover;
  String titre;
  String descrip;
  MarvelPage2(this.id, this.urlChanel, this.cover, this.titre, descrip);

  @override
  _MarvelPage2State createState() => _MarvelPage2State();
}

class _MarvelPage2State extends State<MarvelPage2> {
  double opacite = 1.0;
  VideoPlayerController _controller;
  bool _portraitPosition = true;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.urlChanel)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      _portraitPosition =
          MediaQuery.of(context).orientation == Orientation.portrait;
    });

    return Scaffold(
        body: (_portraitPosition)
            ? PortraiView(
                widget.id,
                widget.urlChanel,
                widget.cover,
                widget.titre,
                widget.descrip,
              )
            : ViewPage2(
                widget.id,
                widget.urlChanel,
                widget.cover,
                widget.titre,
              )
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
