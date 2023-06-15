import 'package:flutter/material.dart';
class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container( height: 120,width: 120,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: CircleAvatar(
                radius:60 ,
                backgroundImage:AssetImage( "assets/i.jpeg")
                     
              ),
            ),
            
           ),
           SizedBox(height: 20,),
           Row(mainAxisSize: MainAxisSize.min,
             children: [
             Text("Deepika Timalsina ," ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
             SizedBox(width: 15,),
             Text("21", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)
           ]),

               SizedBox(height: 15,),

           Row(
            mainAxisSize: MainAxisSize.min,
             children: [
               Icon(Icons.favorite ,color: Colors.white,),
               SizedBox(width: 15,),
               Text("11 kilometers", style: TextStyle(color: Colors.white70),)
             ],
           )
          
          
          ],
        ),
      ),
    );
  }
}