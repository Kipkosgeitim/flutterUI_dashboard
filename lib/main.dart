
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Demo'),
        backgroundColor: Colors.blue[600]
      ),
      drawer: new Drawer(),
      backgroundColor: Colors.blue[200],
      body: Container(
         child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
       
        Menufun(title:'Home', icon:Icons.home, col:Colors.blue),
         Menufun(title:'Academics', icon:Icons.library_add, col:Colors.green),
          Menufun(title:'News', icon:Icons.new_releases, col:Colors.brown),
           Menufun(title:'Account', icon:Icons.account_balance, col:Colors.deepOrange),
            Menufun(title:'Settings', icon:Icons.settings, col:Colors.teal),
             Menufun(title:'Information', icon:Icons.info_outline, col:Colors.lightBlue),

        ],
        
        
        ),
      )
     
    );
  }
}

class Menufun extends StatelessWidget {
  Menufun({this.title,this.icon,this.col});
  final String title;
  final IconData icon;
  final MaterialColor col;
  @override
  Widget build(BuildContext context) {
    return Card(
      
            child: InkWell(
              splashColor: Colors.blue,
              onTap:(){},
              child:Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(icon,size: 75.0,
                    color: col,
                    ),
                    
                    Text(title,
                    style: new TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
                ),
            ),
          
    );
  }
}