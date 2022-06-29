import "package:flutter/material.dart";
import 'package:places/card_image_list.dart';
import "gradient_back.dart";

class HeaderAppBar extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Stack(
            children: <Widget>[
                GradientBack("Popular"),
                CardImageList()
            ],
        );
    }
}