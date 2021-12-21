import 'package:flutter/material.dart';

class About extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About us"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.asset("images/about.jpg",height: 150,width:50,),

          ListTile(
            title: Text("About:",
              style: (
                  TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal
                  )
              ),
            ),
          ),
          Card(
            child: ListTile(
              title:Text("Health Care: This application helps patients to find easy "
                  "doctors, hospitals, and know more information about each diseases. "
                  "It contains information about the best doctors in each "
                  "department, best hospitals, and information about medicines."
                  "The departments are physical therapy, dentist, internal medicine,"
                  "surgery, pediatric. The most common diseases are heart diseases, "
                  "diabtetes diseases,"
                  "hypertension diseases, and kidney diseases. ",
                style: (
                    TextStyle(fontSize: 20,)
                ),
              ),
            ),
          )

        ],
      ),
    ) ;
  }

}