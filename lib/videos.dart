import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
    backgroundColor: Colors.purple[200],
    centerTitle: true,
    elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Width: ' + MediaQuery.of(context).size.width.toString()),
            Text('Height: ' + MediaQuery.of(context).size.height.toString()),

          ],
        ),
      ),
    );
  }
}
