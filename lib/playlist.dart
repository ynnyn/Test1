import 'package:flutter/material.dart';
import 'package:untitled1/song_page.dart';
import 'model.dart';

class Playlist extends StatefulWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {

  static List<String> songName = [
    '사건의 지평선',
    '한숨',
    '달그림자'
  ];
  static List<String> songImagePath = [
    'assets/song1.jpg',
    'assets/song2.jpg',
    'assets/song3.jpg'
  ];
  static List<String> songArtist = [
    '윤하',
    '이하이',
    '안예은'
  ];

  final List<Song> songData = List.generate(songArtist.length, (index) =>
    Song(songName[index], songArtist[index], songImagePath[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playlist'),
    backgroundColor: Colors.purple[200],
    centerTitle: true,
    elevation: 0,
      ),
      body: ListView.builder(
          itemCount: songData.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text(
                  songData[index].name
                ),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(songData[index].imgPath),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SongPage(song: songData[index])));
                  debugPrint(songData[index].name);
                },
              ),
            );
          }),
    );
  }
}
