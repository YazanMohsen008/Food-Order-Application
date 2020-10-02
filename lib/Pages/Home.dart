
import 'package:flutter/material.dart';

class Home extends StatefulWidget{

  State createState()=> HomeState();
}

class HomeState extends State<Home>
{
  Widget  build(BuildContext context)
  {
    dynamic user=  ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
              children:[
                SizedBox(height: 50,),
                Text('Welcome ${user.name} ',style: TextStyle(fontSize: 20),)
        ,
                SizedBox(height: 50,),
                Text('Your Bill is  ',style: TextStyle(fontSize: 20),)
                ,
                SizedBox(height: 50,),

                Text('${user.bill}  \$',style: TextStyle(fontSize: 20),)
                ,
                SizedBox(height: 50,),
              RaisedButton(
                onPressed: ()async{
                  dynamic obj=await Navigator.pushNamed(context,'order');
                    setState(() {
                      user.bill=obj['bill'];
                    });
                },
                child: Text('Order'),
              )


              ]
          )
      ),
    );


  }


}