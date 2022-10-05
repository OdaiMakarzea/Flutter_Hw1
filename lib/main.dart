import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        ListView(

          children:  [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 30, 0, 25),
              child: Text('Center' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30),),
            ),
            ProfileCard(name: 'odai makarzea', description: 'programmer',collect: 846, attention: 51, track: 267, coupons: 39, image: '${'images/general.png'}'  ),


            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Widgets(name: 'Wallet', icon: Icons.account_balance_wallet_rounded,),
                  Widgets(name: 'Delivery', icon: Icons.directions_car,),
                  Widgets(name: 'Message', icon: Icons.message,),
                  Widgets(name: 'Service', icon: Icons.attach_money_rounded,),
                ],
              ),
            ),

            SettingsCard(name: 'Address', image: 'images/address.png', description: 'Ensure your harvesting address'),
            SettingsCard(name: 'Privacy', image: 'images/privacy.png', description: 'System permission change'),
            SettingsCard(name: 'General', image: 'images/general.png', description: 'Basic functional settings'),
            SettingsCard(name: 'Notifications', image: 'images/notification.png', description: 'Take over the news in time'),

          ],
        ),
      ),
    );
  }
}

class Widgets extends StatelessWidget {
  final String? name;
  final IconData? icon;
  Widgets({@required this.name , @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Row(
            children: [
              Icon(icon)
            ],
          ),
        ),
        Row(
          children: [
            Text('${this.name}' , style: TextStyle(fontSize: 15),)
          ],
        ),

      ],
    );
  }
}

class SettingsCard extends StatelessWidget {
  final String? image;
  final String? name;
  final String? description;
  SettingsCard({@required this.image , @required this.name , @required this.description});



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect
                (
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset('${this.image}',height:60,width: 60, ),

              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children:[ Text('${this.name}', style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold))],
                ),
                Row(
                  children: [
                    Text('${this.description}' , style: TextStyle(fontSize: 15 , color: Colors.grey))
                  ],
                )
              ],
            ),

            Expanded(
              child:
              Icon(Icons.navigate_next , color: Colors.grey, ),

            )
          ],
        ),

      ),



    );
  }
}

class ProfileCard extends StatelessWidget {
  final String? name;
  final String? image;
  final String? description;
  final int? collect;
  final int? attention ;
  final int? track ;
  final int? coupons;
  ProfileCard ({@required this.name, @required this.description ,@required  this.collect ,@required this.attention,@required this.coupons ,@required this.track,@required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,

      child: Card(
        color: Colors.blueAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children:
          [
            Row
              (
              children:
              [

                Padding
                  (
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect
                    (
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset('${this.image}',height:100,width: 100, ),

                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${this.name}' , style: TextStyle(fontSize: 25 , color: Colors.white , fontWeight: FontWeight.bold),),
                    Text('${this.description}' , style: TextStyle(fontSize: 15 , color: Colors.white),),

                  ] ,
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.edit ,color: Colors.white, size: 20, ),
                ),

              ],

            ),
            Row
              (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              [
                Column(

                  children: [
                    Row(
                      children: [
                        Text('${this.collect}' , style: TextStyle(fontSize:25 , fontWeight: FontWeight.bold , color: Colors.white),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Collect' , style: TextStyle(fontSize:15 , color: Colors.white))

                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('${this.attention}' , style: TextStyle(fontSize:25 , fontWeight: FontWeight.bold , color: Colors.white),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Attention' , style: TextStyle(fontSize:15 , color: Colors.white))

                      ],
                    )
                  ],
                ),Column(
                children: [
                  Row(
                    children: [
                      Text('${this.track}' , style: TextStyle(fontSize:25 , fontWeight: FontWeight.bold , color: Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Track' , style: TextStyle(fontSize:15 , color: Colors.white))

                    ],
                  )
                ],
              ),Column(
                children: [
                  Row(
                    children: [
                      Text('${this.coupons}' , style: TextStyle(fontSize:25 , fontWeight: FontWeight.bold , color: Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Coupons' , style: TextStyle(fontSize:15 , color: Colors.white))

                    ],
                  )
                ],
              ),

              ],

            )


          ],
        ),
      ),
    );
  }
}

