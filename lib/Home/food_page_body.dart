import 'package:e_commerce/util/color.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/icon_and_text.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  //top img side view
  PageController pageController = PageController(viewportFraction: 0.85);
  var currPageValue=0.0;
  double scaleFactor = 0.8;
  double height = 220;

  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
setState(() {
      currPageValue=pageController.page!;
  
});
    });
  }

  @override
  void dispose(){
    pageController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.deepPurple,
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

    //image sliding method
    Matrix4 matrix = new Matrix4.identity();
    if(index == currPageValue.floor()){
      var currScale = 1-(currPageValue - index)*(1- scaleFactor);
      var currTrans = height *(1-currScale)/2;
      matrix = Matrix4.diagonal3Values( 1 ,currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if (index == currPageValue.floor()+1){
      var currScale = scaleFactor+(currPageValue-index+1)*(1-scaleFactor);
      var currTrans = height *(1-currScale)/2;
      matrix = Matrix4.diagonal3Values( 1,currScale, 1);
      matrix = Matrix4.diagonal3Values( 1 ,currScale, 1)..setTranslationRaw(0, currTrans, 0);

 
    }
    else if (index == currPageValue.floor()-1){
      var currScale = 1-(currPageValue - index)*(1- scaleFactor);
      var currTrans = height *(1-currScale)/2;
      matrix = Matrix4.diagonal3Values( 1,currScale, 1);
      matrix = Matrix4.diagonal3Values( 1 ,currScale, 1)..setTranslationRaw(0, currTrans, 0);

 
    }
    else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values( 1,currScale, 1)..setTranslationRaw(0, height*(1-scaleFactor)/2,1);

    }


    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven ? FoodColor.paraColor : Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/burger.jpg"))),
          ),
          //information of img
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: EdgeInsets.only(left: 30, bottom: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5)
                  ),
                  BoxShadow(color: Colors.white,
                  offset: Offset(-5, 0)
                  ), BoxShadow(color: Colors.white,
                  offset: Offset(5, 0)
                  ),
                
                ],
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.only(top: 15, right: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Bitter Orange Marinda",
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: FoodColor.mainColor,
                                    size: 15,
                                  )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "4.5"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "1287"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "Comments")
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconandText(icon: Icons.circle, text:"Normal" , iconColor: FoodColor.iconColor1),
                        IconandText(icon: Icons.location_on, text:"1.7 km" , iconColor: FoodColor.mainColor),
                        IconandText(icon: Icons.access_time_rounded, text:"32 min" , iconColor: FoodColor.iconColor2)
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
