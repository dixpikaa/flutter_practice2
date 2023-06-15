import 'package:dating_app/newpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dating APP',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions:[Text("S E L E C T", style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)],
      ),
      body:SingleChildScrollView(
        child: Column( crossAxisAlignment:CrossAxisAlignment.stretch,
          children: 
            <Widget>[
              Padding(padding: EdgeInsets.all(15),
               child: Text("Super Liked me",style: TextStyle(fontWeight: FontWeight.bold,fontSize:25 ),),
               ),
             Container(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.circular(20)),
                hintText: "search",
                filled: true,
                prefixIcon: Icon(Icons.search)),
              ),
            
               )
             ),
             Padding(padding:EdgeInsets.all(15),
             child: Row(
              children: <Widget>[
                Text("Super liked  " ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
               SizedBox(width: 20,),
                CircleAvatar(radius: 15,child: Text("5"), backgroundColor: Colors.red.shade700,),
                Spacer(),
                Text("1h", style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),)
              ],
             ),
             ),
         ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 10,),
          padding: EdgeInsets.all(20),
        
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 4,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: ListTile(
                leading:InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>MyNewPage()));
                  },
                  child: CircleAvatar
                  
                  (backgroundImage:AssetImage( "assets/i.jpeg"),radius: 25,
                  
                  ),
                ),

                
    
                title: Text("Deepika", style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Row(children: [
                  Icon(Icons.favorite,color: Colors.black87,),
                  SizedBox(width: 15,),
                  Text("11 kilometers" ,style:TextStyle( fontWeight: FontWeight.bold),),
                ]),
                trailing:Column(
                  children: [
                    Text("Online",style: TextStyle(color: Colors.green ,fontSize: 15),),
                    Icon(Icons.star,
                    color: Colors.blue,
                    ),
                  ],
                ),
               
  
              ),
            );
          }
         )
           
              
            
          ],
        ),
      ),

    );
  }
}