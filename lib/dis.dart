import 'package:flutter/material.dart';

class Diseases extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diseases'),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(30.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                  margin: EdgeInsets.all(8.0),
                  color: Colors.teal[100],
                  child: InkWell(
                    onTap: (){},
                    hoverColor: Colors.teal,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("images/heart.png",height: 100,width: 100,),
                          Text("Heart Disease",
                              style: new TextStyle(
                                fontSize: 18.0,
                                fontWeight:FontWeight.bold,)),
                        ],
                      ),
                    ),
                  )
              ),
              Card(
                  margin: EdgeInsets.all(8.0),
                  color: Colors.teal[100],
                  child: InkWell(
                    onTap: (){},
                    hoverColor: Colors.teal,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("images/diabete.png",height: 100,width: 100,),
                          Text("Diabetes",style: new TextStyle(fontSize: 18.0,
                            fontWeight:FontWeight.bold,)),
                        ],
                      ),
                    ),
                  )
              ),
              Card(
                  margin: EdgeInsets.all(8.0),
                  color: Colors.teal[100],
                  child: InkWell(
                    onTap: (){},
                    hoverColor: Colors.teal,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("images/hyper.png",height: 100,width: 100,),
                          Text("Hypertension",style: new TextStyle(fontSize: 18.0,
                            fontWeight:FontWeight.bold,)),
                        ],
                      ),
                    ),
                  )
              ),
              Card(
                  margin: EdgeInsets.all(8.0),
                  color: Colors.teal[100],
                  child: InkWell(
                    onTap: (){},
                    hoverColor: Colors.teal,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("images/kidney.png",height: 100,width: 100,),
                          Text("Kidney diseases",style: new TextStyle(fontSize: 18.0,
                            fontWeight:FontWeight.bold,)),
                        ],
                      ),
                    ),
                  )
              ),

            ],
          )
      )
    ) ;
  }

}