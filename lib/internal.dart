import 'package:flutter/material.dart';
import 'doctor.dart';

class Internal extends StatelessWidget
{
  String image;
  Internal(this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Internal Medicine Department"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(this.image),
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
                      subtitle: Text("01123456789"),
                      leading: CircleAvatar(child: Icon(Icons.person_pin),backgroundColor: Colors.tealAccent,),
                      trailing: IconButton(
                        icon: Icon(Icons.favorite_border_outlined),onPressed: (){},
                      ),
                      title: Text("Doctor name"),
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