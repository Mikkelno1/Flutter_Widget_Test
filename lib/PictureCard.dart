import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * Custom object that returns a Card
 */
class Picturecard extends StatelessWidget{
  
  final String name;
  final String quote;
  final String image; 
  
  const Picturecard({
   super.key,
   required this.name,
   required this.quote,
   required this.image 
});
  
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Row( //positions everything in a row
          mainAxisAlignment: MainAxisAlignment.center, //centers elements of the row
          mainAxisSize: MainAxisSize.min, //defines the size of the card - min is the minimum size of the objects inside the card - remember that in a row, the mainAxis is horizontal
          children: <Widget>[
            Flexible(child: Column( //forces the sub-widget to adjust it's size based on the parent widget - makes sure that the text doesn't push the image out to the right
              mainAxisSize: MainAxisSize.min, 
              crossAxisAlignment: CrossAxisAlignment.center, //remember that in a column, the crossaxis is ALSO on the horizontal axis. Not confusing at all
              children: [
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)), 
                Text(quote)
              ],
            )), 
            const SizedBox(width: 12), //positions the image 12 pixels to the right of the text
            Image.asset(image, width: 200, height: 200),
          ],
        ),
      ),
    );
    
  }
  
   
  
} 