import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.purple[200],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
              backgroundImage: AssetImage('assets/me.jpg'),
              radius: 60,
            ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30,
            ),
            Text('NAME',
            style: TextStyle(
              color: Colors.deepPurple,
              letterSpacing: 2,
            ),),
            SizedBox(
              height: 10,
            ),
            Text('윤새은',
            style: TextStyle(
              color: Colors.purple[200],
              letterSpacing: 2,
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 30,
            ),
            Text('AGE',
              style: TextStyle(
                color: Colors.deepPurple,
                letterSpacing: 2,
              ),),
            SizedBox(
              height: 10,
            ),
            Text('25',
              style: TextStyle(
                  color: Colors.purple[200],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text('Handong Global University',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                ),),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text('21900474',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1,
                  ),),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text('International Areas Study',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1,
                  ),),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 35,
                ),
                Text('ICT Convergence',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1,
                  ),),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: ElevatedButton(
                  child: Text('Return to My Page'),
                  onPressed:() {
                    Navigator.pop(context);
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

