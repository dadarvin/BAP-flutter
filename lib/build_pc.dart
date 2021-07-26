import 'package:flutter/material.dart';

// class BuildingPC extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body:
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Center(
//             child: Text('Pilih Komponen PC mu !'),
//           ),
//           Center()
//         ],
//       ),
//
//     );
//   }
// }

class BuildingPC extends StatefulWidget{
  @override
  _BuildingPCState createState() => _BuildingPCState();
}

class _BuildingPCState extends State<BuildingPC>{
  String? prosesor;
  String? motherboard;
  String? ram;
  String? storage;

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0) ,
              child: Text('Pilih Komponen PC mu !',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Oswald',
              ),),
            ),
            Container(
              child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Processor : '),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                            value: 'Intel',
                            child: Text('Intel')),
                        DropdownMenuItem(
                            value: 'AMD',
                            child: Text('AMD')),
                      ],
                      value: prosesor,
                      hint: Text('Pilih Processor'),
                      onChanged: (String? value){
                        setState(() {
                          prosesor = value;
                        });
                      },
                    ),
                  ],
                )
            ),
            Container(
              child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Motherboard : '),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                            value: 'ROG',
                            child: Text('ROG')),
                        DropdownMenuItem(
                            value: 'MSI',
                            child: Text('MSI')),
                      ],
                      value: motherboard,
                      hint: Text('Pilih Motherboard'),
                      onChanged: (String? value){
                        setState(() {
                          motherboard = value;
                        });
                      },
                    ),
                  ],
                )
            ),
            Container(
              child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('RAM : '),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                            value: 'Corsair',
                            child: Text('Corsair')),
                        DropdownMenuItem(
                            value: 'V-Gen',
                            child: Text('V-Gen')),
                      ],
                      value: ram,
                      hint: Text('Pilih RAM'),
                      onChanged: (String? value){
                        setState(() {
                          ram = value;
                        });
                      },
                    ),
                  ],
                )
            ),
            Container(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Storage : '),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                            value: 'SSD',
                            child: Text('SSD')),
                        DropdownMenuItem(
                            value: 'HDD',
                            child: Text('HDD')),
                        DropdownMenuItem(
                            value: 'SSHD',
                            child: Text('SSHD')),
                      ],
                      value: storage,
                      hint: Text('Pilih Storage'),
                      onChanged: (String? value){
                        setState(() {
                          storage = value;
                        });
                      },
                    ),
                  ],
                )
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child:
              Text('Estimasi Harga : RP ....',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'PTSans',
              ),),
            )
          ],
        ),
    );
  }
}