import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36)
                        )
                        ),
                        child: Row(children: <Widget>[
                          Text('Hi Uishopy!',
                           style: Theme.of(context).textTheme.headline.copyWith(
                             color: Colors.white,
                             fontWeight: FontWeight.bold),
                             ),
                             Spacer(),
                             Image.asset("assets/images/logo.png"),
                        ],)
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.23)),
                      ]),
                  child: Row(children: <Widget>[
                    Expanded(child:  TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                    ),
                    SvgPicture.asset("assets/icons/search.svg")
                  ]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
