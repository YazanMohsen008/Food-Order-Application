import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_menu/Services/Food.dart';

class Order extends StatefulWidget{

  State createState() => OrderState();

}
class OrderState extends State<Order>
{

  List<Food> Menu=
  [
     Food(name:'Falafel   '         ,image:'Falafel.png'    ,price: 20)
    ,Food(name:'KFC       '         ,image:'KFC.png'        ,price: 50)
    ,Food(name:'Noodles   '         ,image:'Noodles.png'    ,price: 25)
    ,Food(name:'Hamburger'          ,image:'Hamburger.png'  ,price: 70)
  ];
  double bill=0;
  List<int> foodCount=[0,0,0,0];

  Widget  build(BuildContext context)
  {
   return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(),
            floatingActionButton:RaisedButton.icon(
                label: Text('finish'),
                icon: Icon(Icons.whatshot,),

               onPressed: (){
                  Navigator.pop(context, {
                    'bill': bill
                  });

              },
            )
     ,
            body:ListView.builder(
              itemCount: Menu.length,
              itemBuilder: (context,index){
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading:CircleAvatar(backgroundColor: Colors.white,radius:35 ,
                        backgroundImage: AssetImage('images/${Menu[index].image}'),) ,
                      title: Row(
                          children:[
                            Text(Menu[index].name),
                            SizedBox(width:130,),
                            Text(foodCount[index].toString()),
                        ]),
                      subtitle: Text('${Menu[index].price.toString()} \$')
                      ,onTap: () {
                      bill += Menu[index].price;

                      setState(() {
                        foodCount[index] += 1;
                      });
                    }
                      ,
                    ),
                  );
              }
              ),


     );

  }

}