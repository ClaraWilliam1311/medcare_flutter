import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'dep.dart';
import 'hosp.dart';
import 'dis.dart';
import 'settings.dart';
import 'about.dart';
import 'physical.dart';
import 'dentist.dart';
import 'internal.dart';
import 'surgery.dart';
import 'pediatric.dart';

class MyApp extends StatefulWidget
{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Container home()
  {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(8.0),
            color: Colors.teal[100],
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context)=> Department()
                  )
              );},
              hoverColor: Colors.teal,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("images/depIcon.png",height: 100,width: 100,),
                    Text("Departments",
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
                onTap: (){Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context)=> Hospital()
                    )
                );},
                hoverColor: Colors.teal,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("images/hosIcon.png",height: 100,width: 100,),
                      Text("Hospitals",style: new TextStyle(fontSize: 18.0,
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
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context)=> Diseases()
                    )
                );},
                hoverColor: Colors.teal,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("images/disIcon.png",height: 100,width: 100,),
                      Text("Diseases",style: new TextStyle(fontSize: 18.0,
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
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context)=> About()
                      )
                  );
                },
                hoverColor: Colors.teal,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("images/aboutIcon.png",height: 100,width: 100,),
                      Text("About us",style: new TextStyle(fontSize: 18.0,
                        fontWeight:FontWeight.bold,)),
                    ],
                  ),
                ),
              )
          ),

        ],
      )
    );
  }

  Container profile()
  {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          ListTile(
            title: Icon(Icons.person_pin,size: 120,),
          ),
          Card(
            child: ListTile(
              leading: Text("Username:",style: TextStyle(fontWeight: FontWeight.bold),),
              title: Text("Clara_william"),
              trailing: IconButton(icon: Icon(Icons.edit),onPressed: (){},),
            ),
          ),
          Card(
            child: ListTile(
              leading: Text("Email:",style: TextStyle(fontWeight: FontWeight.bold),),
              title: Text("clara.william.140@gmail.com"),
              trailing: IconButton(icon: Icon(Icons.edit),onPressed: (){},),
            ),
          ),
          Card(
            child: ListTile(
              leading: Text("Phone number:",style: TextStyle(fontWeight: FontWeight.bold),),
              title: Text("01200207544"),
              trailing: IconButton(icon: Icon(Icons.edit),onPressed: (){},),
            ),
          ),
        ],
      ),
    );
  }

  Container favourite()
  {
    List<String> name =["Doctor name","Hospital name","Hospital name","Doctor name"];
    List<String> info =["Phone number: 01123456789","Address: Egypt.","Address: Egypt.","Phone number: 01123456789"];
    return Container(
      child: ListView(
        padding: const EdgeInsetsDirectional.all(30),
        children:[
          for(int i=0 ; i<name.length ; i++)
            Column(
              children:[
                Card(
                  color: Colors.tealAccent,
                  child: ListTile(
                    onTap: (){},
                    subtitle: Text(info[i]),
                    leading: CircleAvatar(
                      child: Icon(Icons.person_pin),
                      backgroundColor: Colors.tealAccent,),
                    trailing: IconButton(
                      icon: Icon(Icons.favorite_sharp),onPressed: (){},
                    ),
                    title: Text(name[i]),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('MedCare'),
          centerTitle: true,
          actions:[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search),
            ),
          ]
      ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text("Clara william"),
                  accountEmail: Text("clara.william.140.gmail.com"),
                  currentAccountPicture: Icon(Icons.person_sharp,size: 60,),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right_outlined),
                  title: Text("Departments"),
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=> Department()
                    )
                    );
                  },
                ),
              ListTile(
                trailing: Icon(Icons.arrow_right_outlined),
                  title: Text("Hospitals"),
                  onTap: (){Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=> Hospital()
                      )
                  );},
                ),
              ListTile(
                trailing: Icon(Icons.arrow_right_outlined),
                  title: Text("Diseases"),
                  onTap: (){Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=> Diseases()
                      )
                  );},
                ),
              ListTile(
                trailing: Icon(Icons.arrow_right_outlined),
                title: Text("Settings"),
                onTap: (){Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context)=> Settings()
                    )
                );},
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right_outlined),
                title: Text("About us"),
                onTap: (){Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context)=> About()
                    )
                );},
              ),
            ],
          ),

        ),
        bottomNavigationBar: TabBar(
          labelColor: Colors.blueGrey,
          unselectedLabelColor: Colors.teal,
          tabs: [
            Tab(icon: Icon(Icons.home), text: "Home",),
            Tab(icon: Icon(Icons.favorite_rounded), text: "Favourites",),
            Tab(icon: Icon(Icons.person_pin), text: "Profile",),
          ],
        ),
        body: TabBarView(
          children: [
            home(),
            favourite(),
            profile(),
          ],
        ),
      ),
    );
  }
}
