import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_menu/Modules/User.dart';

class Register extends StatefulWidget {
  State createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign in '),
      ),
      body: Column(
        children: [
           SizedBox(height: 30),
            Text('Name',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
          ,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: TextField(
              controller: nameController,
              decoration:
                  InputDecoration(),
            ),
          )
          ,
          SizedBox(height: 50),
          Text('Home Address',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: TextField(
              controller: addressController,

            ),
          ),
          SizedBox(height: 50),
          Text('Number',style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: TextField(
              controller: numberController,
              ),
          ),
          SizedBox(height: 40),

          RaisedButton.icon(
              onPressed: () {
                if(nameController.text!='' && numberController.text!='' &&addressController.text!=''){
                User  user=User(name: nameController.text,
                    number: numberController.text,homeAddress: addressController.text);
                Navigator.pushReplacementNamed(context,'home',arguments: user);
                }

              },
              label: Text('Register',style:TextStyle(fontSize: 20, ))
              ,icon: Icon(Icons.send),
          )
              ,
        ],
      ),
    );
  }
}
