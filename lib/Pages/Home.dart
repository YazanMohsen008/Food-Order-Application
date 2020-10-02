
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

      appBar: AppBar(title: Text('Home'),centerTitle: true,),
        body: Center(
            child: Column(
                children:[
                  Image(image: AssetImage('images/Food.jpg'),)
                  ,
                  SizedBox(height: 30,),
                  Text('Welcome ${user.name} ',style: TextStyle(fontSize: 20,
                      fontStyle: FontStyle.italic ,fontWeight: FontWeight.bold),)
          ,
                  SizedBox(height: 30,),
                  Text('Your Bill is  ',style: TextStyle(fontSize: 20),)
                  ,
                  SizedBox(height: 30,),

                  Text('${user.bill}  \$',style: TextStyle(fontSize: 20),)
                  ,
                  SizedBox(height: 30,),
                RaisedButton(
                  elevation: 10,

                  color: Colors.blue[300],
                  onPressed: ()async{
                    dynamic obj=await Navigator.pushNamed(context,'order');
                      setState(() {
                        user.bill=obj['bill'];
                      });
                  },
                  child: Text('Order',style: TextStyle(color: Colors.white),),
                )


                ]
            )
        ),
      );


  }


}