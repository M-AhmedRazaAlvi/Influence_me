import 'package:flutter/material.dart';
import 'package:influence_me/utils/app_colors.dart';
import 'package:influence_me/utils/icon_images.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool landleadState = true;
  int _selectedIndex = 2;
  late Widget child1;
  late Widget child2;
  late Widget child3;
  //late Widget child3 = CustomerDashboard();
  late Widget child4;
  late Widget child5;
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      // drawer: Menu(),
      // appBar: _selectedIndex == 2
      //     ? AppBar(
      //         elevation: 0,
      //         backgroundColor: Color(0xffE5E5E5),
      //         centerTitle: true,
      //         // flexibleSpace: ,
      //         leadingWidth: 45,
      //         titleSpacing: -4,
      //         leading: GestureDetector(
      //           onTap: () {
      //             _globalKey.currentState!.openDrawer();
      //           },
      //           child: Container(
      //             margin: EdgeInsets.only(left: 20),
      //             child: Image.asset(
      //               IconImages.lines,
      //               width: 22.67,
      //               height: 17,
      //             ),
      //           ),
      //         ),
      //         title: Container(
      //           width: MediaQuery.of(context).size.width * 0.75,
      //           child: TextField(
      //             decoration: InputDecoration(
      //               isDense: true,
      //               contentPadding:
      //                   EdgeInsets.symmetric(vertical: 1, horizontal: 20),
      //               filled: true,
      //               hintText: 'Search',
      //               suffixIcon: Icon(
      //                 Icons.search,
      //                 color: Colors.black,
      //                 size: 25,
      //               ),
      //               hintStyle: TextStyle(
      //                 fontSize: 19,
      //                 color: Color(0xff3C3C4399),
      //               ),
      //               fillColor: Color(0xffFAFAFA),
      //               focusedBorder: OutlineInputBorder(
      //                   borderSide: BorderSide(color: Colors.white),
      //                   borderRadius: BorderRadius.circular(30)),
      //               enabledBorder: OutlineInputBorder(
      //                   borderSide: BorderSide(color: Colors.white),
      //                   borderRadius: BorderRadius.circular(30)),
      //             ),
      //           ),
      //         ),
      //         actions: [
      //           GestureDetector(
      //               onTap: () {
      //                 Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                         builder: (context) => ChatSearch()));
      //               },
      //               child: Container(
      //                   margin: EdgeInsets.only(right: 20),
      //                   child: Image.asset(
      //                     IconImages.msg_dot,
      //                     width: 20,
      //                     height: 19.12,
      //                   ))),
      //         ],
      //       )
      //     : null,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Container(
              //   // color: Colors.red,
              //   height: MediaQuery.of(context).size.height * 0.9,
              //   child: IndexedStack(
              //     index: _selectedIndex,
              //     children: [
              //       child1 = ProjectScreen(),
              //       child2 = NavPayment(
              //         landleadState: landleadState,
              //       ),
              //       child3,
              //       child4 = DelayedActivity(),
              //       child5 = MaterialScreen(),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffEBEBEB),
        elevation: 0,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff1A548A),
        unselectedItemColor: AppColors.BgGrey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          // ignore: unnecessary_null_comparison
          if (index == 0 && child1 == null) {
            // child1 = ProjectScreen();
          }
          // ignore: unnecessary_null_comparison
          if (index == 1 && child2 == null) {
            // child2 = NavPayment(landleadState: landleadState);
          }
          // ignore: unnecessary_null_comparison
          if (index == 2 && child3 == null) {
            // child3 = Dashboard();
          }
          // ignore: unnecessary_null_comparison
          if (index == 3 && child4 == null) {
            //  child4 = DelayedActivity();
          }
          // ignore: unnecessary_null_comparison
          if (index == 4 && child5 == null) {
//child5 = MaterialScreen();
          }
          _selectedIndex = index;
          setState(() {});
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset(IconImages.home), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(IconImages.quest), label: ''),
          BottomNavigationBarItem(icon: Image.asset(IconImages.add), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(IconImages.chat), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(IconImages.person), label: ''),
        ],
      ),
    );
  }
}
