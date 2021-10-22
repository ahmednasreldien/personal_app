// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({ Key? key }) : super(key: key);
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
         theme:ThemeData(
           appBarTheme: AppBarTheme(color: Colors.blue[100]),
        primaryColor: Colors.blueGrey,
        accentColor: Colors.teal,
         ),
       home:Home() ,
     );
   }
 }

void _launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';


 class Home extends StatelessWidget {
   const Home({ Key? key }) : super(key: key);
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:AppBar(
      title:Text("Ahmed Nasr") ,
       ),
       
      body: SafeArea(
        
        child:Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children:[
            CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage:AssetImage("assets/images/ahmednasr2.jpeg"),
              radius:100 ,
            ),
            Padding(padding:EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
            child: Text
            ("Ahmed Nasr ",
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 25,
              fontWeight: FontWeight.bold,

            ),
            ),
             ),
             Padding(padding: EdgeInsets.all(10),
             child: Text(
               "Flutter Developer",
               style: TextStyle(
                 fontFamily: "Ranga",
                 fontSize: 25,
               ),
               ),
             ),
             ContactCard(url: "tel:+201006154627",contactText: "+201006154627",iconData:Icons.phone_android_sharp,),
             ContactCard(contactText: "Ahmednasr0097@gmail.com", iconData: Icons.mail_outline_outlined, url: "mailto:ahmednasr0097@gmail.com?subject=News&body=New%20plugin"),
             ContactCard(contactText: "Ahmed Nasr EL Dien", iconData: Icons.facebook_outlined, url: "https://www.facebook.com/ahmednasr97/"),
            ContactCard(contactText: "ahmednasreldien", iconData: FontAwesomeIcons.github, url: "https://github.com/ahmednasreldien")

            

          ],
      ),
        ),
      ),
      );
  }
}

class ContactCard extends StatelessWidget {
  final String contactText,url;
  final iconData;
  const ContactCard({
    required this.contactText,required this.iconData,required this.url
  }) ;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      color: Colors.blue,
      borderOnForeground: true,
      shadowColor: Colors.blue[300],
       
      child: ListTile(
      
        onTap:() {
          _launchURL(url);

        } ,
        leading: Icon(iconData ,color: Colors.black, size: 30,),
        title:Text( contactText , style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),),
      ),
    );
  }
}


