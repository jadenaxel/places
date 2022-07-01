import "package:flutter/material.dart";

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      
    final profile = Text("Profile",
      style: TextStyle(
        color: Colors.white,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Lato',
      ),
    );

    final icon = Icon(Icons.settings, color: Color(0xFFA7A8ee));

    final profileHeader = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        profile,
        icon
      ],
    );

    final profileImage = Container(
        height: 130.0,
        width: 130.0,
        margin: const EdgeInsets.only(
          top: 30.0
        ),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/img/profile.jpg'),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(100)
        )
    );

    final header =  Container(
        height: 450.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF584CD1),
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(
              top: 70.0,
              left: 20.0,
              right: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              profileHeader,
              profileImage
            ],
          ),
        )
    );

    
    return header;
  }
}