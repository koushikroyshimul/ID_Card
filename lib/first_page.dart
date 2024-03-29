import 'package:firstproject/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              CircleAvatar(
                radius:80,
                backgroundColor: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child:ClipOval(
                    child: Image(image: AssetImage('assets/abc.png'),
                      height: 180,
                      width: 180,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text('Koushik Roy',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold, color: Colors.red),),
              SizedBox(height: 1),
              Text('Intern Software Engineer',style: TextStyle(fontSize: 22, color: Colors.red),),
              SizedBox(height: 1),
              Text('ZenithhBD',style: TextStyle(fontSize: 20, color: Colors.red),),
              SizedBox(height: 1),
              Text('Cumilla',style: TextStyle(fontSize: 18, color: Colors.red),),
              SizedBox(height: 35),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55),
              border: Border.all(
                color: Colors.red, // Adjust the color as per your requirement
                width: 7, // Adjust the width of the stroke
              ),
            ),
              child:ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(image: NetworkImage('https://image.lexica.art/md2_webp/02a95a34-7ac2-4eb4-9b5a-65e29fdd2f08'),
                  height: 180,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ),
          ),
              SizedBox(height: 45),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));

                  },
                  child: Text('Next Page', style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xFFFCE4E4),
      ),
    );
  }
}
