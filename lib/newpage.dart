import 'package:dating_app/info.dart';
import 'package:dating_app/profilecard.dart';
import 'package:flutter/material.dart';
class MyNewPage extends StatefulWidget {
  const MyNewPage({super.key});

  @override
  State<MyNewPage> createState() => _MyNewPageState();
}

class _MyNewPageState extends State<MyNewPage> {
 

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
     final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Center(
                  child: Stack(
                    children:[
                      
                      Container( height:400,
                       decoration: BoxDecoration(image: DecorationImage(image:AssetImage("assets/i.jpeg",), fit: BoxFit.fitWidth ,)),
      
                      ),
          
                      Container(height: 400,
                     color: Color.fromARGB(243, 255, 94, 7).withOpacity(0.7),
                        child: SafeArea(child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [Align(
                              alignment: Alignment.centerLeft,
                             child: Text("My profile", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.white),),
                            )],
                          ),
                        )),
                      ),
                      
      Container(
      
        width:size.width,
        child: MyInfo()),
                    ],
                  ),
                ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top:50,bottom: 20),
            child: Table(
              children: [
                TableRow(
                children: [
                 ProfileCard(firstText: "13", secondText: "New Matches", icon:Icon(Icons.star,color: Colors.blue, size: 30,)),
                ProfileCard(firstText: "21", secondText: "Unmatched me", icon:Icon(Icons.cancel,color: Colors.blue,)),
                ]  
                ),
                TableRow(
            children: [
              ProfileCard(firstText: "264", secondText: "matches", icon:Icon(Icons.handshake_rounded,color:Colors.blue),),
              ProfileCard(firstText: "42", secondText: "Rematches", icon:Icon(Icons.restart_alt,color: Colors.blue,)),
            ]
                ),
                TableRow(
            children: [
              ProfileCard(firstText: "404", secondText: "profile visits", icon:Icon(Icons.remove_red_eye,size: 30,color: Colors.blue,)),
              ProfileCard(firstText: "42", secondText:"Super likes", icon:Icon(Icons.favorite,size: 30,color: Colors.blue,))
            ]
                )
              ],
            ),
          ),
        ),
              ]
              
            ),

                   Positioned(
                    top: screenHeight*0.535,
                     child: Container(
                      color: Colors.transparent,
                      height: 80,
                      width:size.width,
                                     child:Row(
                                      mainAxisSize:MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                     
                             children: [ProfileInfoCard(text1: "54%", text2: "progress"),
                            ProfileInfoCard(text1: "23", text2: "Matches"),
                             ProfileInfoCard(text1: "152", text2: "level")
                               
                             ],
                                     ),
                                   ),
                   )
          ],
        ),
      ),

    );
  }
}
