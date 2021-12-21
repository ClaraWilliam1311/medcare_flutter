import 'package:flutter/material.dart';

class Hospital extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hospitals"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/hospital.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: ListView(
          padding: const EdgeInsetsDirectional.all(30),
          children:[
            for(int i=0 ; i<5 ; i++)
              Column(
                children:[
                  Card(
                    color: Colors.tealAccent,
                    child: ListTile(
                      onTap: (){},
                      subtitle: Text("Egypt."),
                      leading: CircleAvatar(child: Icon(Icons.local_hospital_sharp),backgroundColor: Colors.tealAccent,),
                      trailing: IconButton(
                        icon: Icon(Icons.location_pin),onPressed: (){},
                      ),
                      title: Text("Hospital name"),
                    ),
                  ),

                ],
              ),
          ],
        ),
      ),

    ) ;
  }

}