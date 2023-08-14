import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/sign_up/gender_selection/gender_selection_view.dart';
import '../instants/colors.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18.0,top: 20),
          child: BackButton(color: AppColors.primary,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'My Profile',
            style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                letterSpacing: 0
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
          Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipOval(
                      child: CircleAvatar(
                        backgroundColor: AppColors.primary,
                        radius: 90,
                        child:Image.asset('assets/images/default picturee.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 10,
                      child: CircleAvatar(
                        backgroundColor: AppColors.primary,
                        child: Icon(Icons.add,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Text(
                  'Hala Abbas',
                  style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1
                  ),
                ),
                const SizedBox(height: 5,),
                const Text(
                  'Doctor',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Name',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                        Get.bottomSheet(
                            Container(
                              height: screenHeight*0.3,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  topLeft: Radius.circular(50),
                                ),
                                border: Border.all(color: AppColors.white,width: 2),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 10,),
                                      const Icon(Icons.keyboard_double_arrow_down_sharp,color: AppColors.primary,size: 30,),


                                      const Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Text('Edit Name',
                                          style: TextStyle(
                                              color: AppColors.primary,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height:40),
                                      Container(
                                        width:screenWidth-50,
                                        height: 55,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: TextFormField(
                                          cursorColor: AppColors.primary,
                                          keyboardType: TextInputType.name,
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            hintText:'    your new name',
                                            hintStyle: TextStyle(color: AppColors.primary,fontSize: 14),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 30,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Text(
                                            'Cancel',
                                            style: TextStyle(
                                                color: AppColors.primary,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          const SizedBox(width: 10,),
                                          Container(
                                            height: 40,
                                            width:screenWidth/2.5,
                                            decoration: BoxDecoration(
                                              color: AppColors.primary,
                                              borderRadius: BorderRadius.circular(40),),
                                            child: const Center(
                                              child: Text(
                                                'Save',
                                                style: TextStyle(
                                                    color: AppColors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ]),
                              ),
                            )
                        );
                      },
                      child: const Icon(Icons.arrow_forward_ios_rounded,
                        color:AppColors.primary ,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                const Text(
                  'Hala Abbas',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Divider(
                  thickness: 0.7,
                  color: AppColors.primary,
                  indent: 5,
                  endIndent: 10,

                ),
                const SizedBox(height: 5,),
                const Row(
                  children: [
                    Text(
                      'Email Address',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_rounded,
                      color:AppColors.primary ,
                      size: 17,
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                const Text(
                  'hala@gmail.com',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Divider(
                  thickness: 0.7,
                  color: AppColors.primary,
                  indent: 5,
                  endIndent: 10,

                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    const Text(
                      'Phone number',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                        Get.bottomSheet(
                            Container(
                              height: screenHeight*0.3,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  topLeft: Radius.circular(50),
                                ),
                                border: Border.all(color: AppColors.white,width: 2),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 10,),
                                      const Icon(Icons.keyboard_double_arrow_down_sharp,color: AppColors.primary,size: 30,),


                                      const Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Text('Change number',
                                          style: TextStyle(
                                              color: AppColors.primary,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height:40),
                                      Container(
                                        width:screenWidth-50,
                                        height: 55,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: TextFormField(
                                          cursorColor: AppColors.primary,
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            hintText:'   your new number',
                                            hintStyle: TextStyle(color: AppColors.primary,fontSize: 14),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 30,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Text(
                                            'Cancel',
                                            style: TextStyle(
                                                color: AppColors.primary,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          const SizedBox(width: 10,),
                                          Container(
                                            height: 40,
                                            width:screenWidth/2.5,
                                            decoration: BoxDecoration(
                                              color: AppColors.primary,
                                              borderRadius: BorderRadius.circular(40),),
                                            child: const Center(
                                              child: Text(
                                                'Save',
                                                style: TextStyle(
                                                    color: AppColors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ]),
                              ),
                            )
                        );
                      },
                      child: const Icon(Icons.arrow_forward_ios_rounded,
                        color:AppColors.primary ,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                const Text(
                  '0999999',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Divider(
                  thickness: 0.7,
                  color: AppColors.primary,
                  indent: 5,
                  endIndent: 10,

                ),
                const SizedBox(height: 5,),
                 Row(
                  children: [
                    const Text(
                      'Gender',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                          Get.bottomSheet(
                              Container(
                                height: screenHeight*0.3,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    topLeft: Radius.circular(50),
                                  ),
                                  border: Border.all(color: AppColors.white,width: 2),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(height: 10,),
                                        const Icon(Icons.keyboard_double_arrow_down_sharp,color: AppColors.primary,size: 30,),


                                        const Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text('Edit Gender',
                                            style: TextStyle(
                                                color: AppColors.primary,
                                                fontSize: 24,
                                                fontWeight: FontWeight.w400
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height:40),
                                        Container(
                                          width:screenWidth-50,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                                            borderRadius: BorderRadius.circular(40),
                                          ),
                                          child: GenderSelection(
                                            colorText: AppColors.primary,
                                            colorRadio2: AppColors.primary,
                                            colorText1: AppColors.primary,
                                            colorRadio1: AppColors.primary,
                                            colorText2: AppColors.primary,
                                          ),
                                        ),
                                        const SizedBox(height: 30,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const Text(
                                              'Cancel',
                                              style: TextStyle(
                                                  color: AppColors.primary,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            const SizedBox(width: 10,),
                                            Container(
                                              height: 40,
                                              width:screenWidth/2.5,
                                              decoration: BoxDecoration(
                                                color: AppColors.primary,
                                                borderRadius: BorderRadius.circular(40),),
                                              child: const Center(
                                                child: Text(
                                                  'Save',
                                                  style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                      ]),
                                ),
                              )
                          );

                      },
                      child: const Icon(Icons.arrow_forward_ios_rounded,
                        color:AppColors.primary ,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                const Text(
                  'Female',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Divider(
                  thickness: 0.7,
                  color: AppColors.primary,
                  indent: 5,
                  endIndent: 5,

                ),
                Row(
                  children: [
                    const Text(
                      'Password',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                        Get.bottomSheet(
                            Container(
                              height: screenHeight*0.35,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  topLeft: Radius.circular(50),
                                ),
                                border: Border.all(color: AppColors.white,width: 2),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 10,),
                                      const Icon(Icons.keyboard_double_arrow_down_sharp,color: AppColors.primary,size: 30,),


                                      const Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Text('Change password',
                                          style: TextStyle(
                                              color: AppColors.primary,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height:40),
                                      Container(
                                        width:screenWidth-50,
                                        height: 55,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: TextFormField(
                                          cursorColor: AppColors.primary,
                                          keyboardType: TextInputType.name,
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            hintText:'  your new password',
                                            hintStyle: TextStyle(color: AppColors.primary,fontSize: 14),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Container(
                                        width:screenWidth-50,
                                        height: 55,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.primary.withOpacity(0.2),width:2 ),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: TextFormField(
                                          cursorColor: AppColors.primary,
                                          keyboardType: TextInputType.name,
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            hintText: '  Confirm your password',
                                            hintStyle: TextStyle(color: AppColors.primary,fontSize: 14),

                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 30,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Text(
                                            'Cancel',
                                            style: TextStyle(
                                                color: AppColors.primary,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          const SizedBox(width: 10,),
                                          Container(
                                            height: 40,
                                            width:screenWidth/2.5,
                                            decoration: BoxDecoration(
                                              color: AppColors.primary,
                                              borderRadius: BorderRadius.circular(40),),
                                            child: const Center(
                                              child: Text(
                                                'Save',
                                                style: TextStyle(
                                                    color: AppColors.white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ]),
                              ),
                            )
                        );
                      },
                      child: const Icon(Icons.arrow_forward_ios_rounded,
                        color:AppColors.primary ,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                const Text(
                  '*******',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Divider(
                  thickness: 0.7,
                  color: AppColors.primary,
                  indent: 5,
                  endIndent: 5,

                ),
                const SizedBox(height: 5,),
                const Row(
                  children: [
                    Text(
                      'Speciality',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_rounded,
                      color:AppColors.primary ,
                      size: 16,
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                const Text(
                  'General',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Divider(
                  thickness: 0.7,
                  color: AppColors.primary,
                  indent: 5,
                  endIndent: 5,

                ),
                const SizedBox(height: 5,),
              const Row(
                  children: [
                    Text(
                      'Experience',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_rounded,
                      color:AppColors.primary ,
                      size: 16,
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                const Text(
                  '5 years',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Divider(
                  thickness: 0.7,
                  color: AppColors.primary,
                  indent: 5,
                  endIndent: 5,

                ),
                const SizedBox(height: 30,),
                Container(
                  width:screenWidth/1.1,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),

                    color: AppColors.primary,
                  ),
                  child: MaterialButton(onPressed: (){
                    Get.defaultDialog(
                      backgroundColor: AppColors.white,
                      title: '',
                      content: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Text('Are you sure you want to Logout ?',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'NO',
                                  style: TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  'YES',
                                  style: TextStyle(
                                      color: AppColors.primary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                    child: const SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Logout',
                            style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18
                            ),
                          ),
                          SizedBox(width: 2,),
                          Icon(Icons.login_rounded,
                            color:AppColors.white ,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
