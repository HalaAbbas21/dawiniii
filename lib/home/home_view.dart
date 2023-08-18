

import 'package:dawiniii/search_screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../instants/colors.dart';

import '../util/clinics_list.dart';
import '../util/specialities_list.dart';
import 'home_controller.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> with TickerProviderStateMixin {
  int visit = 0;
  List<TabItem> items = [
    const TabItem(
      icon: Icons.home_filled,
      title: 'Home',
    ),
    const TabItem(
      icon: Icons.date_range_rounded,
      title: 'Appointments',
    ),
    const TabItem(
      icon: Icons.notifications,
      title: 'Notifications',
    ),
    const TabItem(
      icon: Icons.messenger_outlined,
      title: 'Messages',
    ),
  ];
  late final TabController _tabController =
  TabController(length: 2, vsync: this, initialIndex: 0);
  var controller = Get.put(HomeLayoutController());

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,) ,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
              child:
              Padding(
                padding: const EdgeInsets.only(top: 0.0,left: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Hi Hamza !',
                          style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5),
                        ),

                        //  const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0,top: 0.0),
                          child: IconButton(
                              onPressed: () {
                                Get.to(const SearchScreen());
                              },
                              icon: const Icon(
                                Icons.search,
                                color: AppColors.primary,
                                size: 35,
                              )),
                        )
                      ],
                    ),
                    const SizedBox(height: 0,),
                    const Text(
                      'FIND THE BEST DOCTOR FOR YOU',
                      style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          letterSpacing:0.2
                      ),
                    ),
                    SizedBox(height:20,),
                    Text(
                      'Upcoming Appointment',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height:10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 0,right: 0.0,bottom:10,top: 20),
                      child: Container(
                        height: screenHeight/4.5,
                        width: screenWidth-10,
                        decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: AppColors.primary.withOpacity(0.01)),
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.primary,
                                blurRadius: 2,
                                spreadRadius: 0.5,
                              ),
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: screenHeight/8,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),),
                                    child:CircleAvatar(
                                      backgroundColor: AppColors.white,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(130),
                                        child: Image.asset(
                                          'assets/images/doctor.png',
                                        ),
                                      ),
                                    ) ,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'Dr.Jonathan Bells',
                                          style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 2,),
                                    Text(
                                      'Therapist',
                                      style: TextStyle(
                                        color:Colors.grey[100],
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 40,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.date_range_rounded,
                                        color: AppColors.primary,
                                        size: 20,
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                        'Today,August 19',
                                        style: TextStyle(
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 18
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(Icons.access_time_filled,
                                        color: AppColors.primary,
                                        size: 20,
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                        '10:00-10:30 AM',
                                        style: TextStyle(
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 18
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ),
            // gethight(40.0),
            // const AppSearchBar(),

            // gethight(15.0),
            SizedBox(
              height: h * 0.07,
              child: TabBar(
                onTap: (val) {
                  setState(() {});
                },
                controller: _tabController,
                labelColor: AppColors.primary,
                unselectedLabelColor: AppColors.grey,
                labelStyle:  const TextStyle(fontSize: 18),
                indicator: CircleTabIndicator(color: AppColors.primary, radius: 4),
                tabs: const [
                  Tab(
                    text: "Clinics",
                  ),
                  Tab(
                    text: "Specialities",
                  ),
                ],
              ),
            ),
            _tabController.index == 0
                ? Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:12.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: ((context, index) => const Clinics(
                      clinicImagePath: "assets/images/doctors1.png",
                      clinicName: "clinicName")),
                ),
              ),
            )
                : Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 30,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: ((context, index) => const Specialities(
                      specialityImagePath: "assets/images/tooth.png",
                      specialityType: "Dentistry")),

                ),
              ),
            ),
          ]),
     /* bottomNavigationBar: Container(
        color: Colors.transparent,
        padding:const EdgeInsets.only(bottom: 20, right: 32, left: 32),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomBarFloating(
            items: items,
            iconSize: 24,
            backgroundColor: AppColors.white,
            color: AppColors.grey,
            colorSelected: AppColors.primary,
            indexSelected: visit,
            blur:30 ,
            paddingVertical: 15,
            onTap: (int index) => setState(() {
              visit = index;
            }),
          ),
        ),
      ),*/

    );
  }


}

CircleTabIndicator({required Color color, required int radius}) {
}


// }
