import 'package:flutter/material.dart';
import 'physical.dart';
import 'dentist.dart';
import 'internal.dart';
import 'surgery.dart';
import 'pediatric.dart';

List<String> dep = ['Physical Therapy Department','Dentist Department',
    'Internal Medicine Department','Surgery Department','Pediatric Department'];

List<String> subti = ['Physical therapy (PT) is care that aims to ease pain and help you function, move, and live better.',
  'A dentist is a medical professional who specializes in dentistry, the diagnosis, prevention, and treatment of diseases and conditions of the oral cavity.',
'Internal medicine focuses on the prevention, diagnosis, and treatment of injuries and diseases.',
  'Surgery is a medical or dental specialty that uses operative manual and instrumental techniques '
      'on a person to investigate or treat a pathological condition such as a disease or injury, '
      'to help improve bodily function, appearance, or to repair unwanted ruptured areas.',
  'Paediatrics is the branch of medicine that involves the medical care of infants, children, and adolescents.'];

List<String> img = ['images/physical.jpg','images/dentist.jpg','images/internal.jpg','images/surgery.jpg','images/pediatric.jpg'];

class Department extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Departments"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            for(int i=0;i<dep.length;i++)
              Column(
                children:[
                  Card(
                    child: ListTile(
                      minVerticalPadding: 45.0,
                      onTap: (){
                        if(dep[i]=='Physical Therapy Department')
                          {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context)=> Physical(img[i])
                                )
                            );
                          }
                        else if(dep[i]=='Dentist Department')
                        {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context)=> Dentist(img[i])
                              )
                          );
                        }
                        else if(dep[i]=='Internal Medicine Department')
                        {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context)=> Internal(img[i])
                              )
                          );
                        }
                        else if(dep[i]=='Surgery Department')
                        {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context)=> Surgery(img[i])
                              )
                          );
                        }
                        else if(dep[i]=='Pediatric Department')
                        {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context)=> Pediatric(img[i])
                              )
                          );
                        }
                      },
                      title: Text(dep[i],
                        style:
                        TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal
                        ),),
                      subtitle: Text(subti[i]),
                      leading: Image.asset(img[i])),

                    ),
                ]
              )
          ],
        )
      )
    );
  }

}
