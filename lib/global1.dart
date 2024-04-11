import 'package:flutter/material.dart';

class Global1 extends StatefulWidget {
  
   final String product;
   final String subname;
   final String text1;
   final String text2;
   final String text3;
  
   final String img;
   
   const Global1({Key? key, required this.product,required this.subname,required this.img,required this.text1,required this.text2,required this.text3 });

  @override
  State<Global1> createState() => _GlobalState();
}

class _GlobalState extends State<Global1> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
    
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))

      ),
    
    child: Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 11,),
              Text(widget.product,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w600),),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffF2F2F2),
              borderRadius: BorderRadius.all(Radius.circular(20),)             
       
            ),
                 
            child: Image(image:AssetImage(widget.img) ,height: 280,width: 280,)),
             SizedBox(height: 10,),
            Text(widget.subname,style: TextStyle(color: Colors.black,fontSize: 16),),
            SizedBox(height: 20,),
            
          
                SizedBox(width: 7,),
                  
                 ElevatedButton(onPressed: (){}, child: Column(
                    children: [  Text(widget.text1,style: TextStyle(color: Colors.white),),
                    
                      
                        Text(widget.text2,style: TextStyle(color: Colors.white)),
                        Text(widget.text3,style: TextStyle(color: Colors.white))
                    
                    ],
                  ),
                  
                  style: ElevatedButton.styleFrom(
              shadowColor: Colors.grey,
              elevation: 15,

                    
                    textStyle: TextStyle(color: Colors.white,
                   fontSize: 20, 
                   fontStyle: FontStyle.normal),
                    
                    backgroundColor: Colors.blue.shade800,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0),
          )
                  ),
                                
                  ),
                  
              ],
              
            
        
      ),
    ),
    );
  }
}