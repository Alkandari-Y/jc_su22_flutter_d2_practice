import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            color: Color.fromARGB(255, 107, 202, 247),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      child:ClipRRect(                
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        topRight: Radius.circular(200),
                        bottomRight: Radius.circular(380)
                      ),
                      child: Image.asset('assets/images/timon.jpg', height:200,))
                    ),
                    Positioned(
                      right:5,
                      top: 75,
                      child: Text('Timmy Happy', style: TextStyle(color: Color.fromARGB(199, 250, 250, 250), fontSize: 24, fontWeight: FontWeight.bold)),
                    ),
                    Positioned(
                      right:5,
                      top: 110,
                      width: 150,
                      child: Text('Biggiest food junkie and hugger!', style: TextStyle(color: Color.fromARGB(199, 250, 250, 250), fontSize: 15)),
                    ),
                  ],
                ),
              ),

              Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ), 
              margin: EdgeInsets.only(top:15),
              padding: EdgeInsets.all(15),
              width: double.infinity,
              height: 300,
              child: Stack(
                
                children: [
                  Positioned(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            children:[
                              Text('About Timon:', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 14,))
                            ],
                          )
                        ),
                        Row(
                          children: [
                            Text('DOB: '), 
                            Text('June 1')
                          ],
                        ),
                      Row(
                        children: [
                          Text('Age: '),
                          Text('3')
                        ],
                      ),
                      Row(
                        children: [
                          Text('Breed: '),
                          Text('German Spitz')
                        ],
                      ),
                      Row(
                        children: [
                          Text('Weight: '),
                          Text('5 KG')
                        ],
                      ),
                      Row(
                        children: [
                          Text('Gender: '),
                          Text('Male')
                        ],),
                      ]),
                  ),
                  Positioned(
                    right: 0,
                    top: 30,
                    child: ClipRRect(                
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200),
                        bottomLeft: Radius.circular(380),
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25)
                      ),
                      child: Image.asset('assets/images/Capture.PNG', height:150,))
                  ),
                    Positioned(
                    right: 10,
                    top: 0,
                    child: Text("Timon's Bestie!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14))
                  ),
                ],
              )
            )
            ],)
   
                

        ),)
      )
    );
  }
}
