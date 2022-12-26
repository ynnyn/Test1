import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'model.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key, required this.song}) : super(key: key);

  final Song song;

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {

  bool isLiked = false;
  int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.song.name),
        backgroundColor: Colors.purple[200],
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(widget.song.imgPath),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(widget.song.artist),
            const SizedBox(
              height: 20,
            ),
            LikeButton(
              size: 30,
              isLiked: isLiked,
              likeCount: likeCount,
            )
          ],
        ),
      ),
    );
  }
}
