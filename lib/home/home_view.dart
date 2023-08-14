

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

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,) ,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
              child:
              Padding(
                padding: const EdgeInsets.only(top: 15.0,left: 10),
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
                              fontSize: 30,
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
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing:0.2
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
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: ((context, index) => const Clinics(
                    clinicImagePath: "assets/images/doctors1.png",
                    clinicName: "clinicName")),
              ),
            )
                : Expanded(
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
          ]),
      bottomNavigationBar: Container(
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
      ),

    );
  }


}

CircleTabIndicator({required Color color, required int radius}) {
}


// }
