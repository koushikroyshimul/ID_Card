import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: Icon(Icons.menu, color: Colors.white,),
          title: Text(
            'Images',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 5),
            Icon(Icons.notifications, color: Colors.white),
            SizedBox(width: 5),
            Icon(Icons.settings, color: Colors.white),
            SizedBox(width: 5),
            Icon(Icons.logout, color: Colors.white),
            SizedBox(width: 5),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(image: AssetImage('assets/abc.png'),
                  height: 270,
                  width: 230,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 3),
              Text('Asset Image', style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.red),),
              SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(image: NetworkImage('https://image.lexica.art/md2_webp/02a95a34-7ac2-4eb4-9b5a-65e29fdd2f08'),
                  height: 270,
                  width: 230,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 3),
              Text('Network Image', style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.red),),
            ],
          ),
        ),
        backgroundColor: Color(0xFFFCE4E4),
      ),
    );
  }
}
