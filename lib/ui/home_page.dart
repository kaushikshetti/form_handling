import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_handling/ui/next_page.dart';
import 'package:image_picker/image_picker.dart';
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// floatingActionButton: FloatingActionButton(onPressed: (){},child:Text("Button")),
// floatingActionButton: FloatingActionButton.extended(onPressed: (){},
// label: Text("Button"),
// icon:Icon(Icons.print,color:Colors.black,)),

// floatingActionButton: FloatingActionButton.extended(
//   onPressed:() async{
//   File image;
//   var imagePicker=await ImagePicker.pickImage(source: ImageSource.gallery);
//   if(imagePicker!=null){
//     setState((){
//      image=imagePicker;
//     });
//   }
  
// },
// label: Text("Button"),
// ),
     drawer: Drawer(
        child:ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail:Text("kshetti29@gmail.com") ,
              accountName: Text("Flutter developer beginner"),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset( "assets/images/Photo.jpg"),
                ),
            ),
            ListTile(
              onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: ((context) => NextPage(title: "First Page"))));
              },
              leading:Icon(Icons.add),
              trailing:FlutterLogo(),
              title:Text("First Page"),
            ),
               ListTile(
                             onTap: () {
              Navigator.push(context,CupertinoPageRoute(builder: ((context) => NextPage(title: "Second Page"))));
              },
              leading:Icon(Icons.subscriptions),
              trailing:FlutterLogo(),
              title:Text("Second Page"),
            ),
             ListTile(
               
               onTap:() {
                 Navigator.pop(context);
               },
              leading:Icon(Icons.close),
              trailing:FlutterLogo(),
              title:Text("Third Page"),
            ),
          ],
        )
      ),
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        elevation:0,
        centerTitle:true,
        title:Text("Hay fellas",
        style:TextStyle(
          color:Colors.white,
          fontSize:20
        ),
        ),
      ),
    );
  }
}