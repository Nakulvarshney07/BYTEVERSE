import 'package:flutter/material.dart';

class Global2 extends StatefulWidget {
  final String img;
  final String text1;
  final String text2;
  const Global2({Key? key,required this.img, required this.text1,required this.text2});

  @override
  State<Global2> createState() => _Global2State();
}

class _Global2State extends State<Global2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          
        ),
        
         height: 275,
         width: 145,
         
         child: Padding(padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
         child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
      
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.all(Radius.circular(25) )
              ),
              
              child: Image(image: AssetImage(widget.img),height: 100,width: 100,)),
            SizedBox(height: 10,),
            Text(widget.text1,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,),),
            SizedBox(height: 2,),
           
                Text(widget.text2,style: TextStyle(fontSize: 15,fontWeight:FontWeight.w400),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.chevron_right_rounded),
                  ],
                )
              
            
          ],
         ),
        ),
      
    );
  }
}