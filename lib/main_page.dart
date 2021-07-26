import 'package:build_a_pc/build_pc.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('images/pc-geming.jpg'),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/p-4.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      )
                  ),
                  padding: EdgeInsets.all(30),
                  child:
                    Column(
                      children: [
                        Text(
                          'Build Your PC !',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35.0,
                            fontFamily: 'ZenTokyo',
                          ),
                        ),
                        Center(
                          child:
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 3.0),
                            child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return BuildingPC();
                              }));
                            }, child: Text('Build Now')),
                          ),
                        ),
                      ],
                    ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.blueGrey,
                  child:
                  Column(
                    children: [
                      Text("Bagian Utama Dari PC",
                      style: TextStyle(
                        fontSize: 26.0,
                        color: Colors.white,
                        fontFamily: 'Anton',
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image.asset('images/processor.png'),
                              Text('Processor',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                            ],
                          ),

                          Column(
                            children: [
                              Image.asset('images/motherboard.png'),
                              Text('Motherboard',
                                style: TextStyle(
                                  color: Colors.white,
                                ),)
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset('images/ram.png'),
                              Text('RAM',
                                style: TextStyle(
                                  color: Colors.white,
                                ),)
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset('images/harddrive.png'),
                              Text('Storage',
                              style: TextStyle(
                                color: Colors.white,
                              ),)
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text('Ingin Rekomendasi PC ?'),
              ],
            ),
          ],
        )
    );
  }
}