import 'package:flutter/material.dart';
import 'package:news_app/pages/ArticalsPage.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Icon(
                  Icons.newspaper,
                  size: 50,
                  ),
              ),
              ListTile(
                leading: Icon(Icons.sports_football_rounded),
                title: Text("s p o r t s"),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Articalspage(Cetagory: "sports"),));
            },
              ),
               ListTile(
                leading: Icon(Icons.business_center),
                title: Text("b u s i n e s s"),
                onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Articalspage(Cetagory: "business"),));
            },
              ),
               ListTile(
                leading: Icon(Icons.topic_sharp),
                title: Text("t e c h n o l o g y"),
                onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Articalspage(Cetagory: "technology"),));
            },
              ),
               ListTile(
                leading: Icon(Icons.science_rounded),
                title: Text("s c i e n c e"),
                onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Articalspage(Cetagory: "science"),));
            },
              ),
              ListTile(
                leading: Icon(Icons.face_unlock_rounded),
                title: Text("e n t e r t a i n m e n t"),
                onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Articalspage(Cetagory: "entertainment"),));
            },
              ),
            ],
          ),
      );
  }
}