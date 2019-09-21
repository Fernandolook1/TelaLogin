import 'package:flutter/material.dart';

class  CurvadoWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ClipPath(
      clipper: ClipHome(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height/2.7,
        decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: 
                [Color(0xFFf9a45f),
                Color(0xFFf86a5c)]
            ),
            boxShadow:[
              BoxShadow(
              color: Color(0x4Df9a45f),
              offset: Offset(0,5),  
              spreadRadius: 10.0
              ),
            ],
        ),
      ),
    );
  }
}

class ClipHome extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    Path path = Path();
    
    var width  = size.width;
    var height = size.height;
    // Path path = Path();
    // path.lineTo(0,0 );
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, 0);
    // path.quadraticBezierTo(x1, y1, x2, y2)
    // path.quadraticBezierTo(0, size.height,0,size.height);
    // path.lineTo(size.width/2,0 );
   
    path.lineTo(0.0, height);
    // path.lineTo(width, height);
    
    var firstControlPoint = Offset(10.0,height);
    var firstEndPoint = Offset(10,height);

    path.quadraticBezierTo( 
      firstControlPoint.dx, firstControlPoint.dy, 
      firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(20.0, height);
    var secondEndPoint = Offset(0, height);
    path.quadraticBezierTo(
      secondControlPoint.dx, secondControlPoint.dy, 
      secondEndPoint.dx, secondEndPoint.dy);

    var trirdControlPoint = Offset(20, height);
    var trirdEndPoint = Offset(30, height-40);
    path.quadraticBezierTo(
      trirdControlPoint.dx, trirdControlPoint.dy, 
      trirdEndPoint.dx, trirdEndPoint.dy);

    var quarterControlPoint = Offset(60, 50);
    var quarterEndPoint = Offset(width-100, 40);
    path.quadraticBezierTo(
     quarterControlPoint.dx, quarterControlPoint.dy, 
     quarterEndPoint.dx, quarterEndPoint.dy);

    var fifthControlPoint = Offset(width-30, 32);
    var fifthEndPoint = Offset(width-10, 10);
    path.quadraticBezierTo(
      fifthControlPoint.dx, fifthControlPoint.dy, 
      fifthEndPoint.dx, fifthEndPoint.dy);

    var sixthControlPoint = Offset(width-0, -4);
    var sixthEndPoint = Offset(width-10, 1);
    path.quadraticBezierTo(
      sixthControlPoint.dx, sixthControlPoint.dy, 
      sixthEndPoint.dx, sixthEndPoint.dy);
    path.lineTo(width-2, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
        return oldClipper !=this;
  }

}