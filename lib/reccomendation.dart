import 'package:flutter/material.dart';
import 'package:build_a_pc/model/pc_spec.dart';

class PCRecommend extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:
        Text('Rekomendasi PC'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if(constraints.maxWidth <= 700){
            return PCRecommendSmall();
          } else {
            return PCRecommendBig();
          }
        },
      ),
    );
  }
}

class PCRecommendBig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: PCRecommendList.map((rec) {
            return InkWell(
              onTap: () {

              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        rec.gambar,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        rec.jenis,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Anton'
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        rec.cpu,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        rec.vga,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        rec.ram,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        rec.storage,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class PCRecommendSmall extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      final PCSpec rec = PCRecommendList[index];
      return InkWell(
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1, child: Image.asset(rec.gambar) ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child:
                        Text(rec.jenis,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22.0, fontFamily: 'Anton'),),

                      ),
                      SizedBox(height: 8,),
                      Center(
                        child: Container(
                          child: Column(
                            children: [
                              Text(rec.cpu),
                              Text(rec.vga),
                              Text(rec.ram),
                              Text(rec.storage),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),)
            ],
          ),
        ),
      );
    },
      itemCount: PCRecommendList.length,
    );
  }
}