import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackContainer extends StatelessWidget {
  String imagePath;
  String text;


  StackContainer(this.imagePath, this.text);

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 45,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 5, left: 50),
                child: Image.asset(
                  imagePath ,
                  width: 20, // Set width to make the image small
                  height: 20, // Set height to make the image small
                  fit: BoxFit
                      .contain, // Ensure the image fits within the size constraints
                )),
            SizedBox(width: 5,),Text(text,style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,
            ),),Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 5,right: 50),
                child: Image.asset(
                  "imgs/back.png",
                  width: 15, // Set width to make the image small
                  height: 15, // Set height to make the image small
                  fit: BoxFit
                      .contain, // Ensure the image fits within the size constraints
                )),
          ],
        )
      ],
    );
  }
}
