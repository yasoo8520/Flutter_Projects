import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exam",
      home: MainPage(),
    );
  }
}
class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // body: SnackBarPge(),
      body:Center(
        child: OutlinedButton(
          child: Text("Show Custom Dialog"),
          onPressed: (){
            final route =MaterialPageRoute(builder:  (context)=>SecondPage());
            Navigator.push(context, route);
            /*showDialog(
              context:context,
                builder: (BuildContext context) {
                return
                  /*AlertDialog(
                  title: Text("Alert"),
                  content: Text("Alert alert Msg"),
                  actions: [
                    OutlinedButton(onPressed: (){
                      Navigator.of(context).pop();
                    }
                    , child: Text("Close"))
                  ],
                );*/
                  customDialog;
                }
            );*/
          },
        ),
      ),
    );
  }
  
}

class SnackBarPge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          final snackbar = SnackBar(content: Text("This is Snack Bar Msg"));
         ScaffoldMessenger.of(context).showSnackBar(snackbar);

        },
        child: Text('Show Snack Bar'),

      ),
    );
  }
}
Dialog customDialog = Dialog(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.elliptical(2, 4)),
    side: BorderSide(color: Colors.red,width: 5),
  ),
  child: Container(
    height: 200,
    child: Center(
      child: Column(
        children: [
          Text("Cutom Dialog Made By Me"),
          OutlinedButton(
              onPressed: (){
                //Navigator.of(context).pop();
              },
              child: Text("CLOSE"))
        ],
      ),
    ),
  ),
);

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("SecondPage"),
            OutlinedButton(onPressed: ()
             {
               Navigator.pop(context);
             }
            , child: Text("return"))
          ],
        ),
      ),
    );
  }

}