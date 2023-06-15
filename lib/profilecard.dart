import 'package:flutter/material.dart';
class ProfileCard extends StatelessWidget {
  final String firstText, secondText;
  final Widget icon;
const ProfileCard({Key ?key, required this.firstText, required this.secondText, required this.icon}) : super(key: key);


  @override

  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 16,
          bottom:50,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: icon,
            ),
            Text(firstText,style:TextStyle(fontWeight: FontWeight.bold), ),
            Text(secondText, ),
          ],
        ),
      ),

    );
  }
}
class ProfileInfoCard extends StatelessWidget {
final String text1, text2;
const ProfileInfoCard({Key ?key, required this.text1, required this.text2,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
         margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
  
         child: Container(
           height: 70,
           width: 100,
           child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(text1,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18 ) ,),
              Text(text2,style: TextStyle(),)
               
            ],
         
                ),
         )
    );
  }
}
  