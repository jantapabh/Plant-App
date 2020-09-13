import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        leading: IconButton(icon: SvgPicture.asset("assetName"))
      ),
    );
  }
}