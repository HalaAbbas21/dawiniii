import 'package:dawiniii/instants/colors.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Icon(Icons.arrow_back,color: AppColors.primary,size: 25,),
              SizedBox(width: 5,),
              Container(
                width:screenWidth-120,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextFormField(
                  cursorColor: AppColors.primary,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText:'Search',
                    helperStyle: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),
                    hintStyle: TextStyle(color: AppColors.primary,fontSize: 15),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: AppColors.grey,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10.0,),
                child: Icon(Icons.search,color: AppColors.primary,size: 25,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
