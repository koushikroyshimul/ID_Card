import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: Icon(Icons.menu,color: Colors.white,),
          title: Text('My Profile', style: TextStyle(fontSize: 18, color: Colors.white)),
          actions: [
            Icon(Icons.search,color: Colors.white),
            SizedBox(width: 5),
            Icon(Icons.notifications,color: Colors.white),
            SizedBox(width: 5),
            Icon(Icons.settings,color: Colors.white),
            SizedBox(width: 5),
            Icon(Icons.logout,color: Colors.white),
            SizedBox(width: 5),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Koushik Roy',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.red),),
              SizedBox(width: 2),
              Text('Intern Software Engineer',style: TextStyle(fontSize: 24, color: Colors.red),),
              SizedBox(width: 2),
              Text('ZenithhBD',style: TextStyle(fontSize: 20, color: Colors.red),),
              SizedBox(width: 2),
              Text('Cumilla',style: TextStyle(fontSize: 20, color: Colors.red),),
            ],
          ),
        ),
      ),
    );
  }
}
