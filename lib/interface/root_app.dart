import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_b/interface/my_container.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 65.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 20, top: 65.0),
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 70.0,
                        backgroundImage: AssetImage('imgs/boy.jpeg'),
                        backgroundColor: Colors.transparent,
                      ),
                      Positioned(
                        bottom: 10.0,
                        right: 10.0,
                        child: CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.yellow,
                          child: SizedBox(
                            height: 20.0,
                            width: 20.0,
                            child: Image.asset(
                              'imgs/edit.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Nicolas Adams",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Nicolas@gmail.com',
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(
                          child: Text(
                            "Upgrade to PRO",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            StackContainer("imgs/privacy.png","privacy"),
            StackContainer("imgs/history.png","purchase history"),
            StackContainer("imgs/question-mark.png","help & support"),
            StackContainer("imgs/gear.png","settings"),
            StackContainer("imgs/add-person.png","invite a friend"),
            StackContainer("imgs/logout.png","logout"),




          ],
        ),
      ),
    );
  }
}
