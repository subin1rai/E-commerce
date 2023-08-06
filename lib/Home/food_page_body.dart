import 'package:e_commerce/util/color.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  //top img side view
  PageController pageController=PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      height: 320,
      child: PageView.builder(
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven ? FoodColor.paraColor : Color(0xFF9294cc),
          image: DecorationImage(fit:BoxFit.cover,image: AssetImage("assets/burger.jpg")
          )
          ),
          
    ),
    //information of img
    Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 140,
        margin: EdgeInsets.only(left: 30,bottom: 15, right: 30),
        
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
           
            ),
            child: Container(
              
              padding: EdgeInsets.only(top: 15,right: 15,left: 15),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                BigText(text: "Bitter Orange Marinda",color: Colors.black,)
                ,SizedBox(height: 10,),
                Row(children: [
                  Wrap(
                    children: List.generate(5, (index) => Icon(Icons.star,color: FoodColor.mainColor,size: 15,)),
                  )
                ],)
                
              ],),
            ),
      ),

    )
    ],
    )
    ;
  }
}
