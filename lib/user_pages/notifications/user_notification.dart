import 'package:dawiniii/instants/colors.dart';
import 'package:flutter/material.dart';

class UserNotification extends StatelessWidget {
  const UserNotification({Key? key}) : super(key: key);

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
            'Notifications',
            style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                letterSpacing: 0
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 30,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.primary,
                      child: Icon(Icons.notifications,color: AppColors.white,size: 30,)),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Message Notification Description',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '23-9-2022',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '07:10 AM',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 15,
                color: AppColors.primary,
                thickness: 0.5,
              )
            ],

          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.notifications,color: AppColors.white,size: 30,)),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Message Notification Description',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '23-9-2022',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '07:10 AM',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 15,
                color: AppColors.primary,
                thickness: 0.5,
              )
            ],

          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.notifications,color: AppColors.white,size: 30,)),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Message Notification Description',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '23-9-2022',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '07:10 AM',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 15,
                color: AppColors.primary,
                thickness: 0.5,
              )
            ],

          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.notifications,color: AppColors.white,size: 30,)),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Message Notification Description',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '23-9-2022',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '07:10 AM',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 15,
                color: AppColors.primary,
                thickness: 0.5,
              )
            ],

          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.notifications,color: AppColors.white,size: 30,)),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Message Notification Description',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '23-9-2022',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '07:10 AM',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 15,
                color: AppColors.primary,
                thickness: 0.5,
              )
            ],

          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.notifications,color: AppColors.white,size: 30,)),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Message Notification Description',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '23-9-2022',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '07:10 AM',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 15,
                color: AppColors.primary,
                thickness: 0.5,
              )
            ],

          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.notifications,color: AppColors.white,size: 30,)),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Message Notification Description',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '23-9-2022',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '07:10 AM',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 15,
                color: AppColors.primary,
                thickness: 0.5,
              )
            ],

          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.primary,
                      child: Icon(Icons.notifications,color: AppColors.white,size: 30,)),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Message Notification Description',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '23-9-2022',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '07:10 AM',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                height: 15,
                color: AppColors.primary,
                thickness: 0.5,
              )
            ],

          ),
        ],
      ),

    );
  }
}
