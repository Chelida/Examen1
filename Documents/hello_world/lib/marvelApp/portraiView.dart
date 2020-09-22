
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'provider/data.dart'; 
import 'widget/programmeItem.dart';

class PortraiView extends StatefulWidget {
  String id;
  String urlChanel;
  String cover;
  String titre;
  String descrip;
  PortraiView(this.id, this.urlChanel, this.cover, this.titre, this.descrip);
  @override
  _PortraiViewState createState() => _PortraiViewState();
}

class _PortraiViewState extends State<PortraiView> {
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

  @override
  Widget build(BuildContext context) {
    // if (MediaQuery.of(context).orientation == Orientation.landscape) {
    //   setState(() {
    //     _controller.pause();
    //   });
    // }
    return Scaffold(
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Container(
                          height: 330,
                          width: double.infinity,
                          child: _controller.value.initialized
                              ? AspectRatio(
                                  aspectRatio: _controller.value.aspectRatio,
                                  child: VideoPlayer(_controller),
                                )
                              : Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 280,
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
                          child: AnimatedOpacity(
                            opacity: opacite,
                            duration: Duration(seconds: 1),
                            child: Container(
                              margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.height / 4.8,
                                top: MediaQuery.of(context).size.height / 7,
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
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 280),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40)),
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                              image: AssetImage(widget.cover),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          widget.titre,
                                          style: TextStyle(
                                              fontStyle: FontStyle.italic,
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          widget.descrip,
                                          style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 70, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Programme',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '>>',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                // Container(
                                //   height: 220,
                                //   margin: EdgeInsets.only(left: 70),
                                //   width:
                                //       MediaQuery.of(context).size.width / 1.2,
                                //   child: ListView.builder(
                                //       scrollDirection: Axis.horizontal,
                                //       itemCount: CHANNEL_CATEGORIES.length,
                                //       itemBuilder: (context, i) {
                                //         return FilmItem(
                                //             id: CHANNEL_CATEGORIES[i].id,
                                //             titre: CHANNEL_CATEGORIES[i].titre,
                                //             descrip:
                                //                 CHANNEL_CATEGORIES[i].descrip,
                                //             cover: CHANNEL_CATEGORIES[i].cover,
                                //             urlChanel: CHANNEL_CATEGORIES[i]
                                //                 .urlChanel);
                                //       }),
                                // ),
                                // SizedBox(height: 20),

                                SizedBox(height: 20),
                                Container(
                                  height: 220,
                                  margin: EdgeInsets.only(left: 70),
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: programData.length,
                                      itemBuilder: (context, i) {
                                        return Program(
                                          id: programData[i]["id"],
                                          cover: programData[i]["cover"],
                                          titre: programData[i]["titre"],
                                          descrip: programData[i]["descrip"],
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          : Column(
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
                      child: AnimatedOpacity(
                        duration: Duration(seconds: 1),
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
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
