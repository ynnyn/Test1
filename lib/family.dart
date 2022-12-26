import 'package:flutter/material.dart';

class Family extends StatelessWidget {
  const Family({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.deepPurple
        ),
        home: ListViewPage()
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  var titleList = [
    '윤새은',
    '윤하은',
    '윤새힘'
  ];
  var imageList = [
    'assets/me.jpg',
    'assets/haun.jpeg',
    'assets/sehim.JPG'
  ];
  var description = [
    'Me',
    'Sister',
    'Brother'
  ];
  void showPopup(context, title, image, description) {
    showDialog(
      context: context,
      builder: (context){
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    width: 200,
                    height: 200,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(title, style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                color: Colors.grey),),
                Padding(
                    padding: const EdgeInsets.all(8),
                child: Text(
                  description,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[500]
                  ),
                  textAlign: TextAlign.center,
                ),
                ),
                ElevatedButton.icon(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                  label: const Text('close'),
                ),
              ],
            )
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text('Family'),
        backgroundColor: Colors.purple[200],
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap:() {
              debugPrint(titleList[index]);
              showPopup(context, titleList[index], imageList[index], description[index]);
            },
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(imageList[index]),
                  ),
                  Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(titleList[index],
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: width,
                        child: Text(description[index],
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[500]
                        ),),
                      )
                    ],

                  ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
