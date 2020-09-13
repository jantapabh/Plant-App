import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //It will Provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36))),
              ),
              Positioned(child:
               Container(
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
